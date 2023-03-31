import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/car_owner_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_car_owner/commons/widgets/driver_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/google_map_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/location_text.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_order_detail/bloc/car_owner_order_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarOwnerOrderDetailView extends StatefulWidget {
  const CarOwnerOrderDetailView({super.key});

  @override
  State<CarOwnerOrderDetailView> createState() =>
      _CarOwnerOrderDetailViewState();
}

class _CarOwnerOrderDetailViewState extends State<CarOwnerOrderDetailView> {
  PageController pageController = PageController(viewportFraction: 1);

  Widget divider = Column(
    children: const [
      SizedBox(
        height: s08,
      ),
      Divider(
        color: CustomColors.gainsboro,
        thickness: 3,
      ),
      SizedBox(
        height: s04,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerOrderDetailBloc, CarOwnerOrderDetailState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final car = successState.order.orderDetail!.car;

        final rentCost = calculateDays(
              successState.order.startTime,
              successState.order.endTime,
            ) *
            successState.order.unitPrice;

        final promotionCost = successState.order.promotion?.discount ?? 0;

        final deliveryFee = successState.order.deliveryFee;

        final totalCost = rentCost + deliveryFee - promotionCost;
        // final totalCost = successState.order.amount;
        final deposit = successState.order.deposit;
        final remaining = totalCost - deposit;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Chi tiết',
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: s16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Trạng thái',
                    child: Row(
                      children: [
                        Text(
                          successState.order.status.displayName,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        if (successState.order.status == OrderStatus.pending)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {},
                                dialogType: DialogType.CONFIRMATION,
                                customCenterWidget: const Center(
                                  child: Icon(
                                    Icons.check_circle,
                                    color: CustomColors.flamingo,
                                    size: 100,
                                  ),
                                ),
                                primaryColor: CustomColors.flamingo,
                                title: 'Bạn muốn xác nhận?',
                                negativeText: 'Hủy',
                                positiveText: 'Đồng ý',
                              );
                            },
                            child: const Text('Xác nhận'),
                          ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Thời gian',
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                            ),
                            const SizedBox(
                              width: s08,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState.order.startTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState.order.endTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Chi tiết giá',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Đơn giá thuê: ',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            Text(
                              '${formatCurrency(successState.order.unitPrice)}/ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Text(
                              'Tổng phí thuê xe:',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            Text(
                              '${formatCurrency(successState.order.unitPrice)} x ${calculateDays(
                                successState.order.startTime,
                                successState.order.endTime,
                              )} ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (successState.order.deliveryFee > 0)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí giao nhận xe:',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(
                                        successState.order.deliveryFee),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        const SizedBox(
                          height: s04,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Khuyễn mãi:',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            //TODO: add promotion
                            Text(
                              '-${formatCurrency(promotionCost)}',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            const Text(
                              'Tổng cộng:',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              formatCurrency(totalCost),
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: s08),
                          padding: const EdgeInsets.symmetric(
                            horizontal: s08,
                            vertical: s04,
                          ),
                          color: CustomColors.ochre.withOpacity(0.1),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Tiền cọc',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(successState.order.deposit),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              if (successState.order.status !=
                                      OrderStatus.cancelled &&
                                  successState.order.status !=
                                      OrderStatus.rejected)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: s02,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Đã thanh toán tiền cọc',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.dimGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: s08,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Thanh toán cho chủ xe khi nhận xe',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(remaining),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.flamingo,
                                    ),
                                  ),
                                ],
                              ),
                              if (successState.order.status.step > 0 &&
                                  successState.order.status !=
                                      OrderStatus.rejected &&
                                  successState.order.status !=
                                      OrderStatus.cancelled)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: s02,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Đã thanh toán',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.dimGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Xe',
                    child: Row(
                      children: [
                        car.images.isNotEmpty
                            ? CachedNetworkImage(
                                height: 60,
                                width: 60,
                                imageUrl: car.images[0].url,
                                fit: BoxFit.fill,
                                errorWidget: (context, url, error) {
                                  return const Icon(Icons.error);
                                })
                            : const Image(
                                height: 60,
                                width: 60,
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  Images.carExample,
                                ),
                              ),
                        const SizedBox(width: s16),
                        Column(children: [
                          Text(
                            car.name ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: s08),
                          Text(
                            car.licensePlate,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                divider,
                if (successState.order.orderDetail?.driver != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Tài xế',
                      child: DriverWidget(
                        driver: successState.order.orderDetail!.driver!,
                        onTap: (driver) {
                          context.pushNamed(
                            RouteName.carOwnerDriverDetail,
                            queryParams: {
                              'driver-id': driver.id,
                            },
                          );
                        },
                      ),
                    ),
                  ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Địa điểm giao nhận xe',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            const SizedBox(width: 2),
                            SizedBox(
                              width: context.width() * 0.8,
                              child: LocationText(
                                longitude: successState.order.orderDetail
                                        ?.pickupLocation?.longitude ??
                                    0,
                                latitude: successState.order.orderDetail
                                        ?.pickupLocation?.latitude ??
                                    0,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GoogleMapWidget(
                          latitude: successState.order.orderDetail
                                  ?.pickupLocation?.latitude ??
                              0,
                          longitude: successState.order.orderDetail
                                  ?.pickupLocation?.longitude ??
                              0,
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Địa điểm của khách hàng',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            const SizedBox(width: 2),
                            SizedBox(
                              width: context.width() * 0.8,
                              child: LocationText(
                                longitude: successState.order.orderDetail
                                        ?.deliveryLocation?.longitude ??
                                    0,
                                latitude: successState.order.orderDetail
                                        ?.deliveryLocation?.latitude ??
                                    0,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GoogleMapWidget(
                          latitude: successState.order.orderDetail
                                  ?.deliveryLocation?.latitude ??
                              0,
                          longitude: successState.order.orderDetail
                                  ?.deliveryLocation?.longitude ??
                              0,
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                const SizedBox(
                  height: s32,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Padding carTitle(BuildContext context, Car car) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: s08,
          ),
          Row(
            children: [
              Text(
                car.name ?? '',
                style: boldTextStyle(size: 18),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                car.licensePlate,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.dimGray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget carImage(BuildContext context, Car car) {
    if (car.images.isEmpty) {
      return Image.asset(
        Images.carExample,
        width: double.infinity,
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
      );
    }
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.65,
          child: PageView.builder(
            controller: pageController,
            itemCount: car.images.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(s08),
              alignment: Alignment.center,
              child: CachedNetworkImage(
                  width: double.infinity,
                  imageUrl: car.images[index].url,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  }),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.62,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: pageController,
              count: car.images.length,
              effect: CustomizableEffect(
                spacing: 3,
                activeDotDecoration: DotDecoration(
                  height: 5,
                  width: 5,
                  color: CustomColors.primaryMaterialColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                dotDecoration: DotDecoration(
                  height: 5,
                  width: 5,
                  color: CustomColors.silver,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

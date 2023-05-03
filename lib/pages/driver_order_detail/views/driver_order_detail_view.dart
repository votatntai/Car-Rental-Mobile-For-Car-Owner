import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/car_owner_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_car_owner/commons/widgets/customer_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/google_map_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/location_text.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/enums/order_status.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/widgets/feedback_item.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_detail/bloc/driver_order_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DriverOrderDetailView extends StatefulWidget {
  const DriverOrderDetailView({super.key});

  @override
  State<DriverOrderDetailView> createState() => _DriverOrderDetailViewState();
}

class _DriverOrderDetailViewState extends State<DriverOrderDetailView> {
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
    return BlocBuilder<DriverOrderDetailBloc, DriverOrderDetailState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        if (successState.order.orderDetails.isEmpty) {
          return Scaffold(
            appBar: appAppBar(
              context,
              titleText: 'Chi tiết',
            ),
            body: const Center(
              child: Text('Không có thông tin'),
            ),
          );
        }

        final car = successState.order.orderDetails.first.car;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Chi tiết',
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                carImage(context, successState.order.orderDetails.first.car),
                carTitle(context, successState.order.orderDetails.first.car),
                divider,
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
                        if (successState.order.status == OrderStatus.paid)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<DriverOrderDetailBloc>().add(
                                        DriverOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          status: OrderStatus.receivedTheCar,
                                        ),
                                      );
                                },
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
                            child: const Text('Nhận xe'),
                          ),
                        if (successState.order.status ==
                            OrderStatus.receivedTheCar)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<DriverOrderDetailBloc>().add(
                                        DriverOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          status:
                                              OrderStatus.arrivedAtPickUpPoint,
                                        ),
                                      );
                                },
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
                            child: const Text('Đến điểm đón'),
                          ),
                        if (successState.order.status ==
                            OrderStatus.arrivedAtPickUpPoint)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<DriverOrderDetailBloc>().add(
                                        DriverOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          status: OrderStatus.receivedGuests,
                                        ),
                                      );
                                },
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
                            child: const Text('Nhận khách'),
                          ),
                        if (successState.order.status ==
                            OrderStatus.receivedGuests)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<DriverOrderDetailBloc>().add(
                                        DriverOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          status: OrderStatus.ongoing,
                                        ),
                                      );
                                },
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
                            child: const Text('Bắt đầu di chuyển'),
                          ),
                        // if (successState.order.status == OrderStatus.paid)
                        //   ElevatedButton(
                        //     onPressed: () {
                        //       showConfirmDialogCustom(
                        //         context,
                        //         onAccept: (c) async {
                        //           context.read<DriverOrderDetailBloc>().add(
                        //                 DriverOrderDetailEvent
                        //                     .orderStatusChanged(
                        //                   orderId: successState.order.id,
                        //                   status: OrderStatus.returnedTheCar,
                        //                 ),
                        //               );
                        //         },
                        //         dialogType: DialogType.CONFIRMATION,
                        //         customCenterWidget: const Center(
                        //           child: Icon(
                        //             Icons.check_circle,
                        //             color: CustomColors.flamingo,
                        //             size: 100,
                        //           ),
                        //         ),
                        //         primaryColor: CustomColors.flamingo,
                        //         title: 'Bạn muốn xác nhận?',
                        //         negativeText: 'Hủy',
                        //         positiveText: 'Đồng ý',
                        //       );
                        //     },
                        //     child: const Text('Trả xe'),
                        //   ),
                        // if (successState.order.status ==
                        //     OrderStatus.returnedTheCar)
                        //   ElevatedButton(
                        //     onPressed: () {
                        //       showConfirmDialogCustom(
                        //         context,
                        //         onAccept: (c) async {
                        //           context.read<DriverOrderDetailBloc>().add(
                        //                 DriverOrderDetailEvent
                        //                     .orderStatusChanged(
                        //                   orderId: successState.order.id,
                        //                   status: OrderStatus.finished,
                        //                 ),
                        //               );
                        //         },
                        //         dialogType: DialogType.CONFIRMATION,
                        //         customCenterWidget: const Center(
                        //           child: Icon(
                        //             Icons.check_circle,
                        //             color: CustomColors.flamingo,
                        //             size: 100,
                        //           ),
                        //         ),
                        //         primaryColor: CustomColors.flamingo,
                        //         title: 'Bạn muốn xác nhận?',
                        //         negativeText: 'Hủy',
                        //         positiveText: 'Đồng ý',
                        //       );
                        //     },
                        //     child: const Text('Hoàn thành'),
                        //   ),
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
                                    successState
                                        .order.orderDetails.first.startTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState
                                        .order.orderDetails.first.endTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(),
                        Container(
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
                                    'Thời gian nhận xe',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatTimeOfDay(car.receiveStartTime)}-${formatTimeOfDay(car.receiveEndTime)}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Thời gian trả xe',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatTimeOfDay(car.returnStartTime)}-${formatTimeOfDay(car.returnEndTime)}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              )
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
                                longitude: successState.order.orderDetails.first
                                        .pickUpLocation?.longitude ??
                                    0,
                                latitude: successState.order.orderDetails.first
                                        .pickUpLocation?.latitude ??
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
                          latitude: successState.order.orderDetails.first
                                  .pickUpLocation?.latitude ??
                              0,
                          longitude: successState.order.orderDetails.first
                                  .pickUpLocation?.longitude ??
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
                                longitude: successState.order.orderDetails.first
                                        .deliveryLocation?.longitude ??
                                    0,
                                latitude: successState.order.orderDetails.first
                                        .deliveryLocation?.latitude ??
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
                          latitude: successState.order.orderDetails.first
                                  .deliveryLocation?.latitude ??
                              0,
                          longitude: successState.order.orderDetails.first
                                  .deliveryLocation?.longitude ??
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
                    label: 'Chủ xe',
                    child: CarOwnerWidget(
                      car: successState.order.orderDetails.first.car,
                      onTap: () {
                        context.pushNamed(
                          RouteName.carOwnerDetail,
                          queryParams: {
                            'car-owner-id': successState
                                .order.orderDetails.first.car.carOwner!.id,
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
                    label: 'Khách hàng',
                    child: CustomerWidget(
                      customer: successState.order.customer,
                      onTap: (customer) {
                        context.pushNamed(
                          RouteName.customerDetail,
                          queryParams: {
                            'customer-id': customer.id,
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (successState.feedback != null)
                  Column(
                    children: [
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Đánh giá từ khách thuê xe',
                          child: Column(
                            children: [
                              FeedbackItem(feedback: successState.feedback!),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
    if (car.thumbnails == null || car.thumbnails?.isEmpty == true) {
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
            itemCount: car.thumbnails!.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(s08),
              alignment: Alignment.center,
              child: CachedNetworkImage(
                  width: double.infinity,
                  imageUrl: car.thumbnails![index].url,
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
              count: car.thumbnails!.length,
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

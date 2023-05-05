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
import 'package:car_rental_for_car_owner/models/enums/rental_car_type.dart';
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

        if (successState.order.orderDetails.isEmpty) {
          return Scaffold(
            appBar: appAppBar(
              context,
              titleText: 'Chi tiết',
            ),
            body: const Center(
              child: Text('Không có chi tiết đơn hàng'),
            ),
          );
        }

        final car = successState.order.orderDetails.first.car;

        var hasDriver = false;
        if (successState.order.orderDetails.isNotEmpty &&
            successState.order.orderDetails.first.driver != null) {
          hasDriver = true;
        }

        final days = calculateDays(
          successState.order.orderDetails.first.startTime,
          successState.order.orderDetails.first.endTime,
        );

        final overNightCostUnit = hasDriver ? 300000 : 0;

        final driverCostUnit = hasDriver ? 200000 : 0;
        final overNightCost = hasDriver ? (overNightCostUnit * (days - 1)) : 0;

        final rentCost = days * (successState.order.unitPrice + driverCostUnit);

        final promotionCost =
            rentCost * ((successState.order.promotion?.discount ?? 0) / 100);

        final carDeliveryCost = successState.order.deliveryFee;

        // final totalCost = rentCost + overNightCost + carDeliveryCost - promotionCost;
        final totalCost = successState.order.amount;
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
                        if (successState.order.status == OrderStatus.canceled &&
                            successState.order.description != null &&
                            successState.order.description!.isNotEmpty) ...[
                          const SizedBox(
                            width: s32,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lý do: ${successState.order.description!}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ] else
                          const Spacer(),
                        if (successState.order.status ==
                            OrderStatus.managerConfirmed)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<CarOwnerOrderDetailBloc>().add(
                                        CarOwnerOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          orderStatus:
                                              OrderStatus.carOwnerApproved,
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
                            child: const Text('Xác nhận cho thuê'),
                          ),
                        if (successState.order.status == OrderStatus.paid &&
                            successState.order.orderDetails.isNotEmpty &&
                            successState.order.orderDetails.first.driver ==
                                null)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  // context.read<CarOwnerOrderDetailBloc>().add(
                                  //       CarOwnerOrderDetailEvent
                                  //           .orderStatusChanged(
                                  //         orderId: successState.order.id,
                                  //         orderStatus:
                                  //             OrderStatus.receivedTheCar,
                                  //       ),
                                  //     );
                                  context.read<CarOwnerOrderDetailBloc>().add(
                                        CarOwnerOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          orderStatus: OrderStatus.ongoing,
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
                                positiveText: 'Xác nhận',
                              );
                            },
                            child: const Text('Giao xe'),
                          ),
                        if (successState.order.status == OrderStatus.ongoing)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<CarOwnerOrderDetailBloc>().add(
                                        CarOwnerOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          orderStatus:
                                              OrderStatus.returnedTheCar,
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
                                positiveText: 'Xác nhận',
                              );
                            },
                            child: const Text('Nhận xe'),
                          ),
                        if (successState.order.status ==
                            OrderStatus.returnedTheCar)
                          ElevatedButton(
                            onPressed: () {
                              showConfirmDialogCustom(
                                context,
                                onAccept: (c) async {
                                  context.read<CarOwnerOrderDetailBloc>().add(
                                        CarOwnerOrderDetailEvent
                                            .orderStatusChanged(
                                          orderId: successState.order.id,
                                          orderStatus: OrderStatus.finished,
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
                                positiveText: 'Xác nhận',
                              );
                            },
                            child: const Text('Hoàn thành'),
                          ),
                      ],
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Loại thuê xe',
                    child: Column(
                      children: [
                        Text(
                          successState.order.hasDriverDisplay,
                        )
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
                        if (hasDriver)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí cho tài xế: ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(driverCostUnit.toDouble())}/ngày',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        if (hasDriver)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí qua đêm cho tài xế: ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(overNightCostUnit.toDouble())}/đêm',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        const Divider(),
                        Row(
                          children: [
                            const Text(
                              'Phí thuê xe:',
                              style: TextStyle(fontSize: 12),
                            ),
                            const Spacer(),
                            Text(
                              '${formatCurrency(successState.order.unitPrice + driverCostUnit)} x $days ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (hasDriver)
                          Column(
                            children: [
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Phí qua đêm:',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(overNightCostUnit.toDouble())} x ${days - 1} đêm',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
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
                                      OrderStatus.canceled &&
                                  successState.order.status !=
                                      OrderStatus.canceled)
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
                                    'Thanh toán cho chủ xe',
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
                              if (successState.order.status == OrderStatus.paid)
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
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          RouteName.carOwnerCarDetail,
                          queryParams: {
                            'car-id': car.id,
                          },
                        );
                      },
                      child: Row(
                        children: [
                          car.imageUrl != null
                              ? CachedNetworkImage(
                                  height: 60,
                                  width: 60,
                                  imageUrl: car.imageUrl!,
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
                ),
                divider,
                if (successState.order.orderDetails.first.driver != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Tài xế',
                      child: DriverWidget(
                        driver: successState.order.orderDetails.first.driver!,
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
                if (successState.order.status == OrderStatus.managerConfirmed)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // showConfirmDialogCustom(
                              //   context,
                              //   onAccept: (c) async {
                              //     context.read<CarOwnerOrderDetailBloc>().add(
                              //           CarOwnerOrderDetailEvent
                              //               .orderStatusChanged(
                              //             orderId: successState.order.id,
                              //             orderStatus: OrderStatus.canceled,
                              //           ),
                              //         );
                              //   },
                              //   dialogType: DialogType.CONFIRMATION,
                              //   customCenterWidget: const Center(
                              //     child: Icon(
                              //       Icons.check_circle,
                              //       color: CustomColors.flamingo,
                              //       size: 100,
                              //     ),
                              //   ),
                              //   primaryColor: CustomColors.flamingo,
                              //   title: 'Bạn muốn xác nhận?',
                              //   negativeText: 'Hủy',
                              //   positiveText: 'Đồng ý',
                              // );
                              showDialog(
                                  context: context,
                                  builder: (builderContext) {
                                    return confirmDialog(
                                      context,
                                      successState.order.id,
                                    );
                                  });
                            },
                            child: const Text('Hủy chuyến'),
                          ),
                        ),
                      ],
                    ),
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

  StatefulBuilder confirmDialog(
    BuildContext rootContext,
    String orderId,
  ) {
    String reason = '';

    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          title: const Text('Xác nhận'),
          content: SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Lý do hủy chuyến:'),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      reason = value;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Hủy'),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();

                rootContext.read<CarOwnerOrderDetailBloc>().add(
                      CarOwnerOrderDetailEvent.cancelOrder(
                        orderId: orderId,
                        reason: reason,
                      ),
                    );
              },
              child: const Text('Đồng ý'),
            ),
          ],
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

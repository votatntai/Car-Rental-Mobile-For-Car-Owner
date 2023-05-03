import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_car_owner/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_car_owner/commons/widgets/google_map_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/location_text.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/models/feedback.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/bloc/car_owner_car_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/widgets/feedback_item.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/widgets/surcharge_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarOwnerCarDetailView extends StatefulWidget {
  const CarOwnerCarDetailView({super.key});

  @override
  State<CarOwnerCarDetailView> createState() => _CarOwnerCarDetailViewState();
}

class _CarOwnerCarDetailViewState extends State<CarOwnerCarDetailView> {
  PageController pageController = PageController(viewportFraction: 1);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  String carStatus(String carStatus) {
    if (carStatus == 'ongoing') {
      return 'Đang thuê';
    }
    if (carStatus == 'blocked') {
      return 'Đã bị khóa';
    }
    if (carStatus == 'idle') {
      return 'Đang trống';
    }
    return 'Đang thuê';
  }

  Color carStatusColor(String carStatus) {
    if (carStatus == 'ongoing') {
      return Colors.red;
    }
    if (carStatus == 'blocked') {
      return Colors.grey;
    }
    if (carStatus == 'idle') {
      return Colors.green;
    }
    return Colors.red;
  }

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
    return BlocBuilder<CarOwnerCarDetailBloc, CarOwnerCarDetailState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        List<FeedbackModel> feedbacks = [...successState.car.feedBacks ?? []];
        feedbacks.sort((a, b) => b.createAt.compareTo(a.createAt));

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: successState.car.name ?? '',
            actionWidget: IconButton(
              icon: const Icon(
                Icons.my_location_outlined,
                size: 24,
              ),
              onPressed: () {
                context.pushNamed(RouteName.carTracking, queryParams: {
                  'car-ids': jsonEncode([successState.car.id]),
                });
              },
            ),
            // actionWidget2: IconButton(
            //   onPressed: () {
            //     context.pushNamed(
            //       RouteName.carCalendar,
            //       queryParams: {
            //         'car-id': successState.car.id,
            //       },
            //     );
            //   },
            //   icon: const Icon(
            //     Icons.calendar_month_outlined,
            //     color: Colors.black,
            //     size: 24,
            //   ),
            // ),
            // actionWidget3: IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.edit_outlined,
            //     color: Colors.black,
            //     size: 24,
            //   ),
            // ),
          ),
          body: SingleChildScrollView(
            child: Container(
              color: context.scaffoldBackgroundColor,
              padding: const EdgeInsets.only(bottom: s08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  carImage(context, successState.car),
                  carTitle(context, successState.car),
                  divider,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Trạng thái',
                      child: Text(
                        carStatus(successState.car.status.toLowerCase()),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: carStatusColor(
                              successState.car.status.toLowerCase()),
                        ),
                      ),
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Thời gian nhận/trả xe',
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
                                '${formatTimeOfDay(successState.car.receiveStartTime)}-${formatTimeOfDay(successState.car.receiveEndTime)}',
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
                                '${formatTimeOfDay(successState.car.returnStartTime)}-${formatTimeOfDay(successState.car.returnEndTime)}',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  divider,
                  if (successState.car.carFeatures?.isNotEmpty == true)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: s16),
                          child: ContainerWithLabel(
                            label: 'Tính năng',
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: successState.car.carFeatures
                                      ?.map(
                                        (e) => Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: s04,
                                          ),
                                          child: Text(
                                            '- ${e.feature.name}',
                                            style: const TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList() ??
                                  [],
                            ),
                          ),
                        ),
                        divider,
                      ],
                    ),
                  if (successState.car.carTypes?.isNotEmpty == true)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: s16),
                          child: ContainerWithLabel(
                            label: 'Loại xe',
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: successState.car.carTypes
                                      ?.map(
                                        (e) => Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: s04,
                                          ),
                                          child: Text(
                                            '- ${e.type.name}',
                                            style: const TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList() ??
                                  [],
                            ),
                          ),
                        ),
                        divider,
                      ],
                    ),
                  if (successState.car.productionCompany != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: s16),
                          child: ContainerWithLabel(
                            label: 'Hãng sản xuất',
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: s04,
                                  ),
                                  child: Text(
                                    successState.car.productionCompany!.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        divider,
                      ],
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Dòng xe',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: s04,
                                ),
                                child: Text(
                                  successState.car.model.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                    ],
                  ),
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
                                  longitude:
                                      successState.car.location.longitude,
                                  latitude: successState.car.location.latitude,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: CustomColors.jetBlack,
                                  ),
                                ),
                                // child: Text(
                                //   successState.order.address,
                                //   style: const TextStyle(
                                //     fontSize: 13,
                                //     fontWeight: FontWeight.w500,
                                //     color: CustomColors.jetBlack,
                                //   ),
                                // ),
                              ),
                            ],
                          ),
                          GoogleMapWidget(
                            longitude: successState.car.location.longitude,
                            latitude: successState.car.location.latitude,
                          ),
                        ],
                      ),
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Phụ phí',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SurchargeItem(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Giới hạn quãng đường',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${successState.car.additionalCharge.maximumDistance} km/ngày',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: s04,
                                ),
                                Text(
                                  'Phí: ${formatCurrency(successState.car.additionalCharge.distanceSurcharge)}/km vượt qua giới hạn',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: s08,
                          ),
                          SurchargeItem(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Quá giờ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: s04,
                                ),
                                Text(
                                  'Phí: ${formatCurrency(successState.car.additionalCharge.timeSurcharge)}/giờ. Quá 5 giờ tính bằng giá thuê 1 ngày',
                                  style: const TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: s08,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (feedbacks.isNotEmpty)
                    Column(
                      children: [
                        divider,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: s16),
                          child: ContainerWithLabel(
                            label: 'Đánh giá từ khách thuê xe',
                            trailing: TextButton(
                              onPressed: () {
                                context.pushNamed(
                                  RouteName.feedbackList,
                                  queryParams: {
                                    'car-id': successState.car.id,
                                  },
                                );
                              },
                              child: const Text(
                                'Xem thêm',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                            ),
                            child: Column(
                              children: feedbacks
                                  .map((e) => FeedbackItem(feedback: e))
                                  .take(3)
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: s32,
                  ),
                  if (successState.car.status.toLowerCase() == 'idle')
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                showConfirmDialogCustom(
                                  context,
                                  onAccept: (c) {
                                    context.read<CarOwnerCarDetailBloc>().add(
                                          const CarOwnerCarDetailEvent
                                              .statusChanged(status: 'Blocked'),
                                        );
                                  },
                                  dialogType: DialogType.CONFIRMATION,
                                  primaryColor: context.primaryColor,
                                  title:
                                      'Bạn có chắc chắn muốn khoá xe này không?',
                                  negativeText: 'Hủy',
                                  positiveText: 'Đồng ý',
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColors.red,
                              ),
                              child: const Text('Khoá xe'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (successState.car.status.toLowerCase() == 'blocked')
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                showConfirmDialogCustom(
                                  context,
                                  onAccept: (c) {
                                    context.read<CarOwnerCarDetailBloc>().add(
                                          const CarOwnerCarDetailEvent
                                              .statusChanged(status: 'Idle'),
                                        );
                                  },
                                  dialogType: DialogType.CONFIRMATION,
                                  primaryColor: context.primaryColor,
                                  title:
                                      'Bạn có chắc chắn muốn mở khoá xe này không?',
                                  negativeText: 'Hủy',
                                  positiveText: 'Đồng ý',
                                );
                              },
                              child: const Text('Mở khoá xe'),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
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
              const Spacer(),
              Text(
                formatCurrency(car.price),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.flamingo,
                ),
                textAlign: TextAlign.end,
              ),
              const Text(
                '/ngày',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.dimGray,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          const SizedBox(
            height: s04,
          ),
          Row(
            children: [
              Text(
                car.licensePlate,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.dimGray,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: s04,
          ),
          Row(
            children: [
              Text(
                car.star.toString(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.dimGray,
                ),
              ),
              const SizedBox(
                width: s02,
              ),
              const Icon(
                Icons.star,
                color: CustomColors.flamingo,
                size: 12,
              ),
              const SizedBox(
                width: s02,
              ),
              const Icon(
                Icons.fiber_manual_record,
                size: 8,
              ),
              const SizedBox(
                width: s02,
              ),
              Text(
                '${car.rented} chuyến',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.dimGray,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: s04,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CarCardTag(
                text: car.model.transmissionType,
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

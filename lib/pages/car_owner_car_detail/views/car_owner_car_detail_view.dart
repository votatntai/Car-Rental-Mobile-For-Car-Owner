import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/models/car.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/bloc/car_owner_car_detail_bloc.dart';
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

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: successState.car.name ?? '',
            actionWidget: IconButton(
              icon: const Icon(
                Icons.my_location_outlined,
                color: Colors.black,
                size: 24,
              ),
              onPressed: () {
                context.pushNamed(RouteName.carTracking, queryParams: {
                  'car-ids': jsonEncode([successState.car.id]),
                });
              },
            ),
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
          Row(
            children: [
              Text(car.licensePlate,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.dimGray,
                  )),
            ],
          ),
          Row(
            children: [
              Text(
                car.star.toString(),
                style: const TextStyle(
                  fontSize: 11,
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
                  fontSize: 11,
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

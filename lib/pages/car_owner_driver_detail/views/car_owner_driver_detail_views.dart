import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_driver_detail/bloc/car_owner_driver_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerDriverDetailView extends StatefulWidget {
  const CarOwnerDriverDetailView({Key? key}) : super(key: key);

  @override
  State<CarOwnerDriverDetailView> createState() =>
      _CarOwnerDriverDetailViewState();
}

class _CarOwnerDriverDetailViewState extends State<CarOwnerDriverDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerDriverDetailBloc, CarOwnerDriverDetailState>(
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
            titleText: 'Tài khoản',
            leading: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: s16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CustomColors.silver,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: successState.driver.avatarUrl == null
                          ? Image.asset(
                              Images.userImage,
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ).cornerRadiusWithClipRRect(60)
                          : CachedNetworkImage(
                              imageUrl: successState.driver.avatarUrl!,
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ).cornerRadiusWithClipRRect(60),
                    )
                  ],
                ),
                const SizedBox(height: s08),
                Text(
                  successState.driver.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: s32),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(height: s16),
                Table(
                  children: [
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Điện thoại',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_outline,
                              color: CustomColors.flamingo,
                            ),
                            SizedBox(
                              width: s08,
                              height: s32,
                            ),
                            Text(
                              'Đã xác thực',
                              style: TextStyle(fontSize: s12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_outline,
                              color: CustomColors.flamingo,
                            ),
                            SizedBox(
                              width: s08,
                              height: s32,
                            ),
                            Text(
                              'Đã xác thực',
                              style: TextStyle(fontSize: s12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'GPLX',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_outline,
                              color: CustomColors.flamingo,
                            ),
                            SizedBox(
                              width: s08,
                              height: s32,
                            ),
                            Text(
                              'Đã xác thực',
                              style: TextStyle(fontSize: s12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Số chuyến',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              height: s32,
                            ),
                            Text(
                              '100',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Đánh giá',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              height: s32,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: s02,
                            ),
                            Icon(
                              Icons.star,
                              color: CustomColors.flamingo,
                              size: 12,
                            ),
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: s16),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(height: s08),
              ],
            ),
          ),
        );
      },
    );
  }
}

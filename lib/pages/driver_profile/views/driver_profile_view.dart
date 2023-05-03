import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/driver_profile/bloc/driver_profile_bloc.dart';
import 'package:car_rental_for_car_owner/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class DriverProfileView extends StatelessWidget {
  const DriverProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: 'Hồ sơ',
        leading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: s16),
        child: BlocBuilder<DriverProfileBloc, DriverProfileState>(
          builder: (context, state) {
            var user = state.driver;
            return Column(
              children: [
                const SizedBox(height: s16),
                Stack(
                  children: [
                    Image.asset(
                      Images.userImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ).cornerRadiusWithClipRRect(60),
                    // Positioned(
                    //   right: 0,
                    //   bottom: 0,
                    //   child: Container(
                    //     alignment: Alignment.center,
                    //     padding: const EdgeInsets.all(s04),
                    //     decoration: BoxDecoration(
                    //       color: Colors.black,
                    //       border: Border.all(
                    //         color: Colors.black.withOpacity(0.1),
                    //       ),
                    //       borderRadius: BorderRadius.circular(s08),
                    //     ),
                    //     child: const Icon(
                    //       Icons.edit,
                    //       color: white,
                    //       size: s16,
                    //     ),
                    //   ).onTap(() {}),
                    // ),
                  ],
                ),
                const SizedBox(height: s16),
                Text(user?.name ?? '', style: boldTextStyle(size: 16)),
                const SizedBox(height: s08),
                Text(user?.phone ?? '', style: secondaryTextStyle()),
                const SizedBox(height: s16),
                const Divider(height: 0),
                const SizedBox(height: s16),
                SettingItemWidget(
                  leading: Icon(Icons.person_outline, color: context.iconColor),
                  title: 'Hồ sơ',
                  titleTextStyle: boldTextStyle(),
                  onTap: () {
                    context.goNamed(RouteName.driverProfileDetail);
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: context.iconColor,
                  ),
                ),
                // SettingItemWidget(
                //   leading: Icon(
                //     Icons.location_on_outlined,
                //     color: context.iconColor,
                //   ),
                //   title: "Address",
                //   titleTextStyle: boldTextStyle(),
                //   onTap: () {
                //     //
                //   },
                //   trailing: Icon(
                //     Icons.arrow_forward_ios_rounded,
                //     size: 18,
                //     color: context.iconColor,
                //   ),
                // ),
                SettingItemWidget(
                  leading: Icon(Icons.notifications_active_outlined,
                      color: context.iconColor),
                  title: 'Thông báo',
                  titleTextStyle: boldTextStyle(),
                  onTap: () {
                    context.goNamed(RouteName.driverNotification);
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: context.iconColor,
                  ),
                ),

                // SettingItemWidget(
                //   leading: Icon(
                //     Icons.comment_outlined,
                //     color: context.iconColor,
                //   ),
                //   title: 'Đánh giá từ khách hàng',
                //   titleTextStyle: boldTextStyle(),
                //   onTap: () {
                //     context.pushNamed(
                //       RouteName.feedbackList,
                //       queryParams: {
                //         'driver-id': user?.id ?? '',
                //       },
                //     );
                //   },
                //   trailing: Icon(
                //     Icons.arrow_forward_ios_rounded,
                //     size: 18,
                //     color: context.iconColor,
                //   ),
                // ),

                SettingItemWidget(
                  leading: Icon(Icons.login, color: context.iconColor),
                  title: 'Đăng xuất',
                  titleTextStyle: boldTextStyle(),
                  onTap: () {
                    showConfirmDialogCustom(
                      context,
                      onAccept: (c) async {
                        await getIt.get<AuthenticationRepository>().logOut();
                      },
                      dialogType: DialogType.CONFIRMATION,
                      primaryColor: context.primaryColor,
                      title: 'Bạn có muốn đăng xuất không?',
                      negativeText: 'Hủy',
                      positiveText: 'Đồng ý',
                    );
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: context.iconColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

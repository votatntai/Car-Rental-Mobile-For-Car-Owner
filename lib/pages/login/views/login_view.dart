import 'dart:async';

import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/input_decoration.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/api_response.dart';
import 'package:car_rental_for_car_owner/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController? _carOwnerUserNameController;
  TextEditingController? _carOwnerPasswordController;
  TextEditingController? _driverUserNameController;
  TextEditingController? _driverPasswordController;

  bool isIconTrue = true;
  bool isChecked = false;

  FocusNode cf1 = FocusNode();
  FocusNode cf2 = FocusNode();

  FocusNode df1 = FocusNode();
  FocusNode df2 = FocusNode();

  final _formKey = GlobalKey<FormState>();

  bool? checkBoxValue = false;

  @override
  void initState() {
    _carOwnerUserNameController = TextEditingController();
    _carOwnerPasswordController = TextEditingController();
    _driverUserNameController = TextEditingController();
    _driverPasswordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _carOwnerUserNameController!.dispose();
    _carOwnerPasswordController!.dispose();
    _driverUserNameController!.dispose();
    _driverPasswordController!.dispose();

    cf1.dispose();
    cf2.dispose();
    df1.dispose();
    df2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appAppBar(
          context,
          leading: false,
          backgroundColor: Colors.transparent,
        ),
        body: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      height: 130,
                      width: 130,
                      fit: BoxFit.fitWidth,
                      image: AssetImage(Images.car),
                    ),
                    const SizedBox(height: s16),
                    Text(
                      'Đăng nhập vào tài khoản',
                      style: boldTextStyle(
                        size: 24,
                      ),
                    ),
                    const SizedBox(height: s16),
                    Material(
                      child: TabBar(
                        indicatorColor: Colors.green,
                        tabs: const [
                          Tab(
                            text: 'Chủ xe',
                          ),
                          Tab(
                            text: 'Tài xế',
                          ),
                        ],
                        labelColor: Colors.black,
                        indicator: MaterialIndicator(
                          height: 5,
                          topLeftRadius: 8,
                          topRightRadius: 8,
                          horizontalPadding: 50,
                          tabPosition: TabPosition.bottom,
                        ),
                      ),
                    ),
                    const SizedBox(height: s32),
                    SizedBox(
                      height: 500,
                      child: TabBarView(children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              focusNode: cf1,
                              onFieldSubmitted: (v) {
                                cf1.unfocus();
                                FocusScope.of(context).requestFocus(cf2);
                              },
                              validator: (k) {
                                // if (!k!.contains('@')) {
                                //   return 'Please enter the correct email';
                                // }
                                return null;
                              },
                              controller: _carOwnerUserNameController,
                              decoration: inputDecoration(
                                context,
                                prefixIcon: Icons.mail_rounded,
                                hintText: 'Tên đăng nhập',
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _carOwnerPasswordController,
                              obscureText: isIconTrue,
                              focusNode: cf2,
                              validator: (value) {
                                return passwordValidator(value);
                              },
                              onFieldSubmitted: (v) {
                                cf2.unfocus();
                                carOwnerSubmit();
                              },
                              decoration: inputDecoration(
                                context,
                                prefixIcon: Icons.lock,
                                hintText: 'Mật khẩu',
                                suffixIcon: Theme(
                                  data: ThemeData(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent),
                                  child: IconButton(
                                    highlightColor: Colors.transparent,
                                    onPressed: () {
                                      setState(() {
                                        isIconTrue = !isIconTrue;
                                      });
                                    },
                                    icon: Icon(
                                      (isIconTrue)
                                          ? Icons.visibility_rounded
                                          : Icons.visibility_off,
                                      size: 16,
                                      color: gray,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: s12),
                            GestureDetector(
                              onTap: () {
                                context.goNamed(RouteName.forgotPassword);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    'Quên mật khẩu?',
                                    style: TextStyle(
                                      color: CustomColors.primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            GestureDetector(
                              onTap: () {
                                carOwnerSubmit();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                decoration: boxDecorationWithRoundedCorners(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(45)),
                                  backgroundColor: CustomColors.primary,
                                ),
                                child: Text('Đăng nhập',
                                    style: boldTextStyle(color: white)),
                              ),
                            ),
                            // const SizedBox(height: 10),
                            // TextButton(
                            //   onPressed: () {},
                            //   child:
                            //       Text('Forgot the password ?', style: boldTextStyle()),
                            // ),
                            const SizedBox(height: 8),
                            TextButton(
                              onPressed: () {
                                context.goNamed(RouteName.signUp);
                              },
                              child: Text.rich(
                                TextSpan(
                                  text: 'Không có tài khoản? ',
                                  style: secondaryTextStyle(),
                                  children: [
                                    TextSpan(
                                      text: 'Đăng ký',
                                      style: boldTextStyle(size: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextFormField(
                              focusNode: df1,
                              onFieldSubmitted: (v) {
                                df1.unfocus();
                                FocusScope.of(context).requestFocus(df2);
                              },
                              validator: (k) {
                                // if (!k!.contains('@')) {
                                //   return 'Please enter the correct email';
                                // }
                                return null;
                              },
                              controller: _driverUserNameController,
                              decoration: inputDecoration(
                                context,
                                prefixIcon: Icons.mail_rounded,
                                hintText: 'Tên đăng nhập',
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _driverPasswordController,
                              obscureText: isIconTrue,
                              focusNode: df2,
                              validator: (value) {
                                return passwordValidator(value);
                              },
                              onFieldSubmitted: (v) {
                                df2.unfocus();
                                driverSubmit();
                              },
                              decoration: inputDecoration(
                                context,
                                prefixIcon: Icons.lock,
                                hintText: 'Mật khẩu',
                                suffixIcon: Theme(
                                  data: ThemeData(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent),
                                  child: IconButton(
                                    highlightColor: Colors.transparent,
                                    onPressed: () {
                                      setState(() {
                                        isIconTrue = !isIconTrue;
                                      });
                                    },
                                    icon: Icon(
                                      (isIconTrue)
                                          ? Icons.visibility_rounded
                                          : Icons.visibility_off,
                                      size: 16,
                                      color: gray,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: s64),
                            GestureDetector(
                              onTap: () {
                                driverSubmit();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                decoration: boxDecorationWithRoundedCorners(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(45)),
                                  backgroundColor: CustomColors.primary,
                                ),
                                child: Text(
                                  'Đăng nhập',
                                  style: boldTextStyle(color: white),
                                ),
                              ),
                            ),
                            // const SizedBox(height: 10),
                            // TextButton(
                            //   onPressed: () {},
                            //   child:
                            //       Text('Forgot the password ?', style: boldTextStyle()),
                            // ),
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  FutureOr<void> driverSubmit() async {
    df1.unfocus();
    df2.unfocus();
    cf1.unfocus();
    cf2.unfocus();

    if (_formKey.currentState!.validate()) {
      // show loading dialog
      LoadingDialogService.load();

      var result = await getIt.get<AuthenticationRepository>().driverLogin(
            _driverUserNameController?.text ?? '',
            _driverPasswordController?.text ?? '',
          );

      LoadingDialogService.dispose();

      if (result is ApiError) {
        // var message = (result as ApiError).error;t
        // showMessageDialog(message: message);
        showMessageDialog(message: 'Tên đăng nhập hoặc mật khẩu không đúng');
      }
    }
  }

  FutureOr<void> carOwnerSubmit() async {
    df1.unfocus();
    df2.unfocus();
    cf1.unfocus();
    cf2.unfocus();
    if (_formKey.currentState!.validate()) {
      // show loading dialog
      LoadingDialogService.load();

      var result = await getIt.get<AuthenticationRepository>().carOwnerLogin(
            _carOwnerUserNameController?.text ?? '',
            _carOwnerPasswordController?.text ?? '',
          );

      LoadingDialogService.dispose();

      if (result is ApiError) {
        // var message = (result as ApiError).error;t
        // showMessageDialog(message: message);
        showMessageDialog(message: 'Tên đăng nhập hoặc mật khẩu không đúng');
      }
    }
  }
}

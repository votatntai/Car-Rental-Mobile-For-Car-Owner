import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/bloc/car_registration_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/widgets/text_form_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarRegistrationView extends StatefulWidget {
  const CarRegistrationView({super.key});

  @override
  State<CarRegistrationView> createState() => _CarRegistrationViewState();
}

class _CarRegistrationViewState extends State<CarRegistrationView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarRegistrationBloc, CarRegistrationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Đăng ký xe',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(s08),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormFieldCustom(
                      labelText: 'Tên xe',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập tên xe';
                        }
                        return null;
                      },
                    ),
                    TextFormFieldCustom(
                      labelText: 'Biển số xe',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập biển số xe';
                        }
                        return null;
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormFieldCustom(
                            labelText: 'Truyền động',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui lòng nhập truyền động';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormFieldCustom(
                            labelText: 'Loại nhiên liệu',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui lòng nhập Loại nhiên liệu';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    // model of car
                    TextFormFieldCustom(
                      labelText: 'Dòng xe',
                      hintText: 'Ví dụ: Honda City',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập dòng xe';
                        }
                        return null;
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormFieldCustom(
                            labelText: 'Số chỗ ngồi',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui lòng nhập số chỗ ngồi';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormFieldCustom(
                            labelText: 'Giá thuê',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui lòng nhập giá thuê';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormFieldCustom(
                            labelText: 'Tiêu thụ xăng dầu',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Tiêu thự xăng ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormFieldCustom(
                            labelText: 'Giá thuê',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui lòng nhập giá thuê';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

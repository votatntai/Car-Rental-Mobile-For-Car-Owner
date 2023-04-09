import 'dart:io';

import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/loading_dialog_service.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/models/additional_charge.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/bloc/car_registration_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/models/additional_charge_model.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/models/car_registration_model.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/widgets/text_form_field_custom.dart';
import 'package:car_rental_for_car_owner/repositories/car_registration_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CarRegistrationView extends StatefulWidget {
  const CarRegistrationView({super.key});

  @override
  State<CarRegistrationView> createState() => _CarRegistrationViewState();
}

class _CarRegistrationViewState extends State<CarRegistrationView> {
  final _formKey = GlobalKey<FormState>();

  List<XFile> _carImages = [];
  List<XFile> _carLicenseImages = [];

  final nameController = TextEditingController();
  final licensePlateController = TextEditingController();
  final transmissionController = TextEditingController();
  final fuelTypeController = TextEditingController();
  final modelController = TextEditingController();
  final seaterController = TextEditingController();
  final priceController = TextEditingController();
  final fuelConsumptionController = TextEditingController();
  final chassisNumberController = TextEditingController();
  final yearOfManufactureController = TextEditingController();
  final productionCompanyController = TextEditingController();
  final locationController = TextEditingController();
  final typeController = TextEditingController();
  final descriptionController = TextEditingController();
  final maximumDistanceController = TextEditingController();
  final distanceSurchargeController = TextEditingController();
  final timeSurchargeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    licensePlateController.dispose();
    transmissionController.dispose();
    fuelTypeController.dispose();
    modelController.dispose();
    seaterController.dispose();
    priceController.dispose();
    fuelConsumptionController.dispose();
    chassisNumberController.dispose();
    yearOfManufactureController.dispose();
    productionCompanyController.dispose();
    locationController.dispose();
    typeController.dispose();
    descriptionController.dispose();
    maximumDistanceController.dispose();
    distanceSurchargeController.dispose();
    timeSurchargeController.dispose();

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
    return BlocBuilder<CarRegistrationBloc, CarRegistrationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Đăng ký xe',
          ),
          backgroundColor: CustomColors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(s08),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFieldCustom(
                      controller: nameController,
                      labelText: 'Tên xe',
                      hintText: 'Ví dụ: Honda City',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập tên xe';
                        }
                        return null;
                      },
                    ),

                    TextFormFieldCustom(
                      controller: licensePlateController,
                      labelText: 'Biển số xe',
                      hintText: 'Ví dụ: 29A1-12345',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui lòng nhập biển số xe';
                        }

                        if (!value.isCarLicensePlate) {
                          return 'Biển số xe không hợp lệ';
                        }
                        return null;
                      },
                    ),

                    const Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        bottom: 8,
                      ),
                      child: Text(
                        'Hình ảnh xe',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (_carImages.isNotEmpty)
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: _carImages
                                    .map(
                                      (e) => Container(
                                        margin: const EdgeInsets.only(left: 8),
                                        height: 50,
                                        child: Image.file(
                                          File(
                                            e.path,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                        const SizedBox(
                          width: 8,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final ImagePicker picker = ImagePicker();
                            final result = await picker.pickMultiImage();

                            setState(() {
                              _carImages = result;
                            });
                          },
                          child: const Text('Thêm ảnh'),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: s16,
                    ),

                    const Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        bottom: 8,
                      ),
                      child: Text(
                        'Giấy tờ xe',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (_carLicenseImages.isNotEmpty)
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: _carLicenseImages
                                    .map(
                                      (e) => Container(
                                        margin: const EdgeInsets.only(left: 8),
                                        height: 50,
                                        child: Image.file(
                                          File(
                                            e.path,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                        const SizedBox(
                          width: 8,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final ImagePicker picker = ImagePicker();
                            final result = await picker.pickMultiImage();

                            setState(() {
                              _carLicenseImages = result;
                            });
                          },
                          child: const Text('Thêm ảnh'),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: s16,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: TextFormFieldCustom(
                            controller: transmissionController,
                            labelText: 'Truyền động',
                            hintText: 'Ví dụ: 2 cầu',
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
                            controller: fuelTypeController,
                            labelText: 'Loại nhiên liệu',
                            hintText: 'Ví dụ: Xăng',
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
                      controller: modelController,
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
                            controller: seaterController,
                            labelText: 'Số chỗ ngồi',
                            hintText: 'Ví dụ: 4',
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
                            controller: priceController,
                            labelText: 'Giá thuê',
                            hintText: 'Ví dụ: 100000',
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
                            controller: fuelConsumptionController,
                            labelText: 'Mức tiêu thụ xăng dầu',
                            hintText: 'Ví dụ: 7 lít/100km',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui long nhập mức tiệu thụ xăng dầu';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormFieldCustom(
                            controller: chassisNumberController,
                            labelText: 'Khung gầm',
                            hintText: 'Ví dụ: 123456789',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui lòng nhập khung gầm';
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
                            controller: yearOfManufactureController,
                            labelText: 'Năm sản xuất',
                            hintText: 'Ví dụ: 2020',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui long nhập nắm sản xuất';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormFieldCustom(
                            controller: productionCompanyController,
                            labelText: 'Hãng xe',
                            hintText: 'Ví dụ: Honda',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Vui lòng nhập hãng xe';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    TextFormFieldCustom(
                      controller: locationController,
                      labelText: 'Vị trí',
                      hintText: 'Ví dụ: 123 Nguyễn Văn Cừ, Quận 5, TP.HCM',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui long nhập vị trí';
                        }
                        return null;
                      },
                    ),
                    TextFormFieldCustom(
                      controller: typeController,
                      labelText: 'Loại xe',
                      hintText: 'Ví dụ: Xe 4 chỗ',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Vui long nhập loại xe';
                        }
                        return null;
                      },
                    ),
                    // TextFormFieldCustom(
                    //   controller: descriptionController,
                    //   labelText: 'Mô tả',
                    //   maxLines: 3,
                    // ),

                    Row(
                      children: [
                        Expanded(
                          child: TextFormFieldCustom(
                            controller: maximumDistanceController,
                            labelText: 'Giới hạn quãng đường km',
                            hintText: 'Ví dụ: 100km',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui lòng nhập giới hạn quãng đường';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormFieldCustom(
                            controller: distanceSurchargeController,
                            labelText: 'Phụ phí vượt quãng đường /km',
                            hintText: 'Ví dụ: 10000',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui lòng nhập phụ phí vượt quãng đường';
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
                            controller: timeSurchargeController,
                            labelText: 'Phụ phí vượt quá giờ ',
                            hintText: 'Ví dụ: 10000/giờ',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.isNumber) {
                                return 'Vui lòng nhập phụ phí vượt quá giờ';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  LoadingDialogService.load();
                                  final repo =
                                      getIt.get<CarRegistrationRepository>();

                                  final resultStr =
                                      await repo.createCarRegistration(
                                    CarRegistrationModel(
                                      name: nameController.text,
                                      licensePlate: licensePlateController.text,
                                      transmissionType:
                                          transmissionController.text,
                                      fuelType: fuelTypeController.text,
                                      model: modelController.text,
                                      seater:
                                          int.tryParse(seaterController.text) ??
                                              0,
                                      price: double.tryParse(
                                              priceController.text) ??
                                          0,
                                      fuelConsumption: fuelTypeController.text,
                                      chassis: chassisNumberController.text,
                                      yearOfManufacture: int.tryParse(
                                              yearOfManufactureController
                                                  .text) ??
                                          0,
                                      productionCompany:
                                          productionCompanyController.text,
                                      location: locationController.text,
                                      type: typeController.text,
                                      additionalCharge: AdditionalChargeModel(
                                        maximumDistance: int.tryParse(
                                                maximumDistanceController
                                                    .text) ??
                                            0,
                                        distanceSurcharge: double.tryParse(
                                                distanceSurchargeController
                                                    .text) ??
                                            0,
                                        timeSurcharge: double.tryParse(
                                                timeSurchargeController.text) ??
                                            0,
                                        additionalDistance: 0,
                                        additionalTime: 0,
                                      ),
                                      images: _carImages,
                                      licenses: _carLicenseImages,
                                    ),
                                  );
                                  LoadingDialogService.dispose();
                                  if (resultStr != null) {
                                    showMessageDialog(
                                      title: 'Thông báo',
                                      message: resultStr,
                                    );
                                  } else {
                                    showMessageDialog(
                                      title: 'Thông báo',
                                      message: 'Tạo phiếu đăng ký thành công',
                                    ).then((value) {
                                      context.goNamed(RouteName.carOwnerHome);
                                    });
                                  }
                                }
                              },
                              child: const Text('Đăng ký'),
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
            ),
          ),
        );
      },
    );
  }
}

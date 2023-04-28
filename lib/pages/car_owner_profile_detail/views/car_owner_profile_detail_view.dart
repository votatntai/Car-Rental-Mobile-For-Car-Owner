import 'dart:io';

import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/input_decoration.dart';
import 'package:car_rental_for_car_owner/commons/widgets/place_autocomplete.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_profile_detail/bloc/car_owner_profile_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerProfileDetailView extends StatefulWidget {
  const CarOwnerProfileDetailView({super.key});

  @override
  State<CarOwnerProfileDetailView> createState() =>
      _CarOwnerProfileDetailViewState();
}

class _CarOwnerProfileDetailViewState extends State<CarOwnerProfileDetailView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _phoneNumberFocus = FocusNode();
  final FocusNode _genderFocus = FocusNode();

  String _address = '';

  @override
  void initState() {
    super.initState();
  }

  XFile? _image;

  Future<void> pickAvatar() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _genderController.dispose();

    _nameFocus.dispose();
    _phoneNumberFocus.dispose();
    _genderFocus.dispose();
    super.dispose();
  }

  void unfocus() {
    _nameFocus.unfocus();
    _phoneNumberFocus.unfocus();
    _genderFocus.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return true;
      },
      child: Scaffold(
        appBar: appAppBar(
          context,
          titleText: 'Hồ sơ của bạn',
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<CarOwnerProfileDetailBloc,
              CarOwnerProfileDetailState>(
            listener: (context, state) {
              _nameController.text = state.carOwner?.name ?? '';
              _phoneNumberController.text = state.carOwner?.phone ?? '';
              _genderController.text = state.carOwner?.gender ?? '';
              _address = state.carOwner?.address ?? '';
            },
            builder: (context, state) {
              var user = state.carOwner;
              return Container(
                padding: const EdgeInsets.all(s16),
                alignment: Alignment.center,
                child: user == null
                    ? const SizedBox()
                    : Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    pickAvatar();
                                  },
                                  child: _image != null
                                      ? Image.file(
                                          File(_image!.path),
                                          fit: BoxFit.cover,
                                          height: 100,
                                          width: 100,
                                        ).cornerRadiusWithClipRRect(60)
                                      : Image.asset(
                                          Images.userImage,
                                          fit: BoxFit.cover,
                                          height: 100,
                                          width: 100,
                                        ).cornerRadiusWithClipRRect(60),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 8,
                                  child: GestureDetector(
                                    onTap: () {
                                      pickAvatar();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(s04),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(s08),
                                      ),
                                      child: const Icon(
                                        Icons.edit,
                                        color: white,
                                        size: s16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: s32),
                            TextFormField(
                              controller: _nameController,
                              focusNode: _nameFocus,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Xin vui lòng nhập tên đầy đủ';
                                }
                                return null;
                              },
                              onFieldSubmitted: (v) {
                                _nameFocus.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_phoneNumberFocus);
                              },
                              decoration: inputDecoration(
                                context,
                                hintText: 'Tên đầy đủ',
                              ),
                            ),
                            const SizedBox(height: s16),
                            TextFormField(
                              controller: _phoneNumberController,
                              focusNode: _phoneNumberFocus,
                              validator: (value) {
                                if (value == null ||
                                    value.isPhoneNumber == false) {
                                  return 'Xin nhập số điện thoại';
                                }
                                return null;
                              },
                              onFieldSubmitted: (v) {
                                _phoneNumberFocus.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_genderFocus);
                              },
                              keyboardType: TextInputType.number,
                              decoration: inputDecoration(
                                context,
                                hintText: 'Số điện thoại',
                              ),
                            ),
                            const SizedBox(height: s16),
                            TextFormField(
                              controller: _genderController,
                              focusNode: _genderFocus,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Giới tính không được để trống';
                                }
                                return null;
                              },
                              onFieldSubmitted: (v) {
                                _genderFocus.unfocus();
                              },
                              decoration: inputDecoration(
                                context,
                                hintText: 'Giới tính',
                              ),
                            ),
                            const SizedBox(height: s16),
                            PlaceAutocomplete(
                              decoration: inputDecoration(
                                context,
                                hintText: 'Địa chỉ',
                              ),
                              onSelected: (option) {
                                _address = option;
                              },
                              defaultText: _address,
                            ),
                            const SizedBox(height: s32),
                            GestureDetector(
                              onTap: () {
                                unfocus();
                                if (_formKey.currentState!.validate()) {
                                  var name = _nameController.text;
                                  var phone = _phoneNumberController.text;
                                  var address = _address;
                                  var gender = _genderController.text;

                                  context.read<CarOwnerProfileDetailBloc>().add(
                                        CarOwnerProfileDetailEvent.saved(
                                          name: name,
                                          phone: phone,
                                          address: address,
                                          gender: gender,
                                        ),
                                      );
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: s16),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text(
                                  'Lưu',
                                  style: boldTextStyle(color: white),
                                ),
                              ),
                            ),
                            const SizedBox(height: s08),
                          ],
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

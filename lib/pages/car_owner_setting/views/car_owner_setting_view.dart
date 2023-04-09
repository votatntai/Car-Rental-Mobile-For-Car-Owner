import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_setting/bloc/car_owner_setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerSettingView extends StatefulWidget {
  const CarOwnerSettingView({super.key});

  @override
  State<CarOwnerSettingView> createState() => _CarOwnerSettingViewState();
}

class _CarOwnerSettingViewState extends State<CarOwnerSettingView> {
  bool isAutoAcceptOrder = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CarOwnerSettingBloc, CarOwnerSettingState>(
      listener: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);
        if (successState != null) {
          setState(() {
            isAutoAcceptOrder = successState.carOwner.isAutoAcceptOrder;
          });
        }
      },
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final carOwner = successState.carOwner;

        return Scaffold(
            appBar: appAppBar(
              context,
              titleText: 'Cài đặt',
            ),
            body: Column(
              children: [
                ListTile(
                  title: const Text('Tự động chấp nhận đơn thuê xe'),
                  trailing: Switch(
                    value: isAutoAcceptOrder,
                    onChanged: (bool value) {
                      setState(() {
                        isAutoAcceptOrder = value;
                      });

                      context.read<CarOwnerSettingBloc>().add(
                            CarOwnerSettingEvent.changeAutoAcceptOrder(
                              isAutoAcceptOrder: value,
                            ),
                          );
                    },
                  ),
                ),
              ],
            ));
      },
    );
  }
}

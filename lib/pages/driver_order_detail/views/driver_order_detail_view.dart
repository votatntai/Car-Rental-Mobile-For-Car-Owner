import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/driver_order_detail/bloc/driver_order_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverOrderDetailView extends StatefulWidget {
  const DriverOrderDetailView({super.key});

  @override
  State<DriverOrderDetailView> createState() => _DriverOrderDetailViewState();
}

class _DriverOrderDetailViewState extends State<DriverOrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverOrderDetailBloc, DriverOrderDetailState>(
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
            titleText: 'Chi tiết',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}

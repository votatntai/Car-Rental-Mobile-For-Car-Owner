import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/bloc/car_owner_home_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/widgets/car_item.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/widgets/car_registration_item.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_home/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CarOwnerHomeView extends StatefulWidget {
  const CarOwnerHomeView({super.key});

  @override
  State<CarOwnerHomeView> createState() => _CarOwnerHomeViewState();
}

class _CarOwnerHomeViewState extends State<CarOwnerHomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerHomeBloc, CarOwnerHomeState>(
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
            titleText: 'Trang chủ',
            leading: false,
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              context.read<CarOwnerHomeBloc>().add(
                    const CarOwnerHomeEvent.started(),
                  );
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: s04),
                      child: Text(
                        'Yêu cầu thuê xe',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (successState.pendingOrders.isEmpty)
                      const Padding(
                        padding: EdgeInsets.only(top: s08, left: s04),
                        child: Text(
                          'Bạn chưa có yêu cầu nào',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const SizedBox(height: s08),
                    if (successState.pendingOrders.isNotEmpty)
                      ...successState.pendingOrders.map(
                        (order) {
                          return OrderItemForCarOwner(
                            order: order,
                            onTap: (order) {
                              context.pushNamed(
                                RouteName.carOwnerOrderDetail,
                                extra: order,
                              );
                            },
                          );
                        },
                      ),
                    if (successState.carRegistrations.isNotEmpty)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: s16),
                          Row(
                            children: [
                              const Text(
                                'Đơn đăng ký xe',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  context.goNamed(
                                    RouteName.carRegistrationList,
                                  );
                                },
                                child: const Text(
                                  'Xem tất cả',
                                  style: TextStyle(
                                    color: CustomColors.jetBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 230,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  CarRegistrationItem(
                                carRegistration:
                                    successState.carRegistrations[index],
                                onTap: (carRegistration) {
                                  context.pushNamed(
                                    RouteName.carRegistrationDetail,
                                    queryParams: {
                                      'car-registration-id': carRegistration.id,
                                    },
                                  );
                                },
                              ),
                              itemCount: successState.carRegistrations.length,
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(height: s16),
                    if (successState.myCars.isNotEmpty)
                      const Padding(
                        padding: EdgeInsets.only(left: s04),
                        child: Text(
                          'Xe của tôi',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    const SizedBox(height: s08),
                    if (successState.myCars.isEmpty)
                      const Center(
                        child: Text('Bạn chưa có xe nào',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ...successState.myCars
                        .map(
                          (e) => CarItem(
                            car: e,
                            onTap: (id) {
                              context.pushNamed(
                                RouteName.carOwnerCarDetail,
                                queryParams: {
                                  'car-id': id,
                                },
                              );
                            },
                          ),
                        )
                        .toList()
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              context.pushNamed(
                RouteName.carRegistration,
              );
            },
            backgroundColor: CustomColors.primary,
            elevation: 0,
            label: const Center(
              child: Text(
                'Đăng ký xe',
              ),
            ),
            icon: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

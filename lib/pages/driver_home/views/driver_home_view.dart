import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/bloc/driver_home_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/order_data_source.dart';
import 'package:car_rental_for_car_owner/pages/driver_home/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class DriverHomeView extends StatefulWidget {
  const DriverHomeView({Key? key}) : super(key: key);

  @override
  State<DriverHomeView> createState() => _DriverHomeViewState();
}

class _DriverHomeViewState extends State<DriverHomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverHomeBloc, DriverHomeState>(
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
              context
                  .read<DriverHomeBloc>()
                  .add(const DriverHomeEvent.started());
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
                        'Đơn hàng hiện tại',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (successState.currentOrders.isEmpty)
                      const Padding(
                        padding: EdgeInsets.only(top: s08, left: s04),
                        child: Text(
                          'Bạn chưa có đơn hàng nào',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    else
                      ...successState.currentOrders.map(
                        (order) {
                          return OrderItemForDriver(
                            order: order,
                            onTap: (order) {
                              context.pushNamed(
                                RouteName.driverOrderDetail,
                                extra: order,
                              );
                            },
                          );
                        },
                      ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.only(left: s04),
                      child: Text(
                        'Lịch',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: SfCalendar(
                        view: CalendarView.month,
                        // dataSource: _getCalendarDataSource(),
                        dataSource: OrderDataSource(
                          successState.calendarOrders,
                        ),

                        monthViewSettings: const MonthViewSettings(
                          showAgenda: true,

                          // appointmentDisplayMode:
                          //     MonthAppointmentDisplayMode.appointment,
                        ),
                        onTap: (calendarTapDetails) {
                          if (calendarTapDetails.targetElement ==
                              CalendarElement.appointment) {
                            context.pushNamed(
                              RouteName.driverOrderDetail,
                              extra: calendarTapDetails.appointments?.first,
                            );
                          }
                        },
                      ),
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

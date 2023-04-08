import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/extensions.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_car_owner/models/enums/weekday.dart';
import 'package:car_rental_for_car_owner/pages/car_calendar/bloc/car_calendar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class CarCalendarView extends StatefulWidget {
  const CarCalendarView({super.key});

  @override
  State<CarCalendarView> createState() => _CarCalendarViewState();
}

class _CarCalendarViewState extends State<CarCalendarView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarCalendarBloc, CarCalendarState>(
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
            titleText: 'Lịch thuê xe',
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Ngày',
                      style: boldTextStyle(),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Bắt đầu',
                      style: boldTextStyle(),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Kết thúc',
                      style: boldTextStyle(),
                    ),
                  ),
                ],
                rows: successState.calendars
                    .map(
                      (e) => DataRow(
                        cells: [
                          DataCell(
                            Text(
                              e.weekday.displayName,
                              style: secondaryTextStyle(),
                            ),
                          ),
                          DataCell(
                            Text(
                              e.startTime.format(context),
                              style: secondaryTextStyle(),
                            ),
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: e.startTime,
                              ).then((value) {
                                if (value != null) {
                                  if (value.isAfter(e.endTime)) {
                                    showMessageDialog(
                                      title: 'Lỗi',
                                      message:
                                          'Thời gian bắt đầu không được lớn hơn thời gian kết thúc',
                                    );
                                  } else {
                                    context
                                        .read<CarCalendarBloc>()
                                        .add(CarCalendarEvent.updateCalendar(
                                          calendar: e.copyWith(
                                            startTime: value,
                                          ),
                                        ));
                                  }
                                }
                              });
                            },
                          ),
                          DataCell(
                            Text(
                              e.endTime.format(context),
                              style: secondaryTextStyle(),
                            ),
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: e.endTime,
                              ).then((value) {
                                if (value != null) {
                                  if (value.isBefore(e.startTime)) {
                                    showMessageDialog(
                                      title: 'Lỗi',
                                      message:
                                          'Thời gian kết thúc không được nhỏ hơn thời gian bắt đầu',
                                    );
                                  } else {
                                    context
                                        .read<CarCalendarBloc>()
                                        .add(CarCalendarEvent.updateCalendar(
                                          calendar: e.copyWith(
                                            endTime: value,
                                          ),
                                        ));
                                  }
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}

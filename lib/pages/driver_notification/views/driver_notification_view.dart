import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/pages/driver_notification/bloc/driver_notification_bloc.dart';
import 'package:car_rental_for_car_owner/pages/driver_notification/widget/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:car_rental_for_car_owner/models/notification.dart'
    as notification_model;

class DriverNotificationView extends StatefulWidget {
  const DriverNotificationView({super.key});

  @override
  State<DriverNotificationView> createState() => _DriverNotificationViewState();
}

class _DriverNotificationViewState extends State<DriverNotificationView> {
  final PagingController<int, notification_model.Notification>
      _pagingController = PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<DriverNotificationBloc>()
          .add(DriverNotificationEvent.pageRequested(pageKey: pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DriverNotificationBloc, DriverNotificationState>(
      listener: (context, state) {
        final scrollPagination = state.scrollPagination;
        if (scrollPagination != null) {
          _pagingController.value = PagingState(
            nextPageKey: scrollPagination.nextPageKey,
            error: scrollPagination.error,
            itemList: scrollPagination.itemList,
          );
        }
      },
      child: Scaffold(
        appBar: appAppBar(
          context,
          titleText: 'Thông báo',
          leading: false,
        ),
        body: Container(
          padding: const EdgeInsets.all(s08),
          child: Column(
            children: [
              Expanded(
                child: PagedListView(
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<
                      notification_model.Notification>(
                    animateTransitions: true,
                    noItemsFoundIndicatorBuilder: (context) {
                      return Column(
                        children: const [
                          Text(
                            'Không có thông báo nào',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    },
                    itemBuilder: (context, item, index) =>
                        NotificationItem(notification: item),
                  ),
                  pagingController: _pagingController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

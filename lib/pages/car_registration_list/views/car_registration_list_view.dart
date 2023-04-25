import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/models/car_registration.dart';
import 'package:car_rental_for_car_owner/pages/car_registration/bloc/car_registration_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_list/bloc/car_registration_list_bloc.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_list/widgets/car_registration_item_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CarRegistrationListView extends StatefulWidget {
  const CarRegistrationListView({super.key});

  @override
  State<CarRegistrationListView> createState() =>
      _CarRegistrationListViewState();
}

class _CarRegistrationListViewState extends State<CarRegistrationListView> {
  final PagingController<int, CarRegistration> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<CarRegistrationListBloc>()
          .add(CarRegistrationListEvent.pageRequested(pageKey: pageKey));
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
    return BlocListener<CarRegistrationListBloc, CarRegistrationListState>(
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
          titleText: 'Danh sách xe đăng ký',
        ),
        body: Container(
          padding: const EdgeInsets.all(s08),
          child: Column(
            children: [
              Expanded(
                child: PagedListView(
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<CarRegistration>(
                    animateTransitions: true,
                    noItemsFoundIndicatorBuilder: (context) {
                      return Column(
                        children: const [
                          Text(
                            'Không có xe đăng ký nào',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    },
                    itemBuilder: (context, item, index) =>
                        CarRegistrationItemVertical(
                      carRegistration: item,
                      onTap: (carRegistration) {
                        context.pushNamed(
                          RouteName.carRegistrationDetail,
                          queryParams: {
                            'car-registration-id': carRegistration.id,
                          },
                        );
                      },
                    ),
                  ),
                  pagingController: _pagingController,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.pushNamed(
              RouteName.carRegistration,
            );
          },
          backgroundColor: CustomColors.jetBlack,
          elevation: 0,
          label: const Center(
            child: Text(
              'Đăng ký xe',
            ),
          ),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}

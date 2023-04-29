import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/models/feedback.dart';
import 'package:car_rental_for_car_owner/pages/car_owner_car_detail/widgets/feedback_item.dart';
import 'package:car_rental_for_car_owner/pages/feedback_list/bloc/feedback_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class FeedbackListView extends StatefulWidget {
  const FeedbackListView({super.key});

  @override
  State<FeedbackListView> createState() => _FeedbackListViewState();
}

class _FeedbackListViewState extends State<FeedbackListView> {
  final PagingController<int, FeedbackModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<FeedbackListBloc>()
          .add(FeedbackListEvent.pageRequested(pageKey: pageKey));
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
    return BlocListener<FeedbackListBloc, FeedbackListState>(
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
          titleText: 'Đánh giá',
        ),
        body: Container(
          padding: const EdgeInsets.all(s08),
          child: Column(
            children: [
              Expanded(
                child: PagedListView(
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<FeedbackModel>(
                    animateTransitions: true,
                    noItemsFoundIndicatorBuilder: (context) {
                      return Column(
                        children: const [
                          Text(
                            'Không có đánh giá nào',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    },
                    itemBuilder: (context, item, index) =>
                        FeedbackItem(feedback: item),
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

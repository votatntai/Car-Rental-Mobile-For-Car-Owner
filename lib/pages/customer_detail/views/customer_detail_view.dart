import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/models/enums/gender.dart';
import 'package:car_rental_for_car_owner/pages/customer_detail/bloc/customer_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomerDetailView extends StatefulWidget {
  const CustomerDetailView({super.key});

  @override
  State<CustomerDetailView> createState() => _CustomerDetailViewState();
}

class _CustomerDetailViewState extends State<CustomerDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerDetailBloc, CustomerDetailState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final customer = successState.customer;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Tài khoản',
            leading: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: s16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CustomColors.silver,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: customer.avatarUrl == null
                          ? Image.asset(
                              Images.userImage,
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ).cornerRadiusWithClipRRect(60)
                          : CachedNetworkImage(
                              imageUrl: customer.avatarUrl!,
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ).cornerRadiusWithClipRRect(60),
                    )
                  ],
                ),
                const SizedBox(height: s08),
                Text(
                  customer.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: s32),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(height: s16),
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Điện thoại',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          customer.phone,
                          style: const TextStyle(fontSize: s12),
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Địa chỉ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          customer.address ?? '',
                          style: const TextStyle(fontSize: s12),
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Giới tính',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          customer.gender.getDisplayName(),
                          style: const TextStyle(fontSize: s12),
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: s16),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(height: s08),
              ],
            ),
          ),
        );
      },
    );
  }
}

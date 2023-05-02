import 'package:car_rental_for_car_owner/di.dart';
import 'package:car_rental_for_car_owner/pages/customer_detail/bloc/customer_detail_bloc.dart';
import 'package:car_rental_for_car_owner/pages/customer_detail/views/customer_detail_view.dart';
import 'package:car_rental_for_car_owner/repositories/customer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerDetailPage extends StatelessWidget {
  const CustomerDetailPage({super.key, required this.customerId});

  final String customerId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CustomerDetailBloc(
        customerRepository: getIt.get<CustomerRepository>(),
      )..add(
          CustomerDetailEvent.started(
            customerId: customerId,
          ),
        ),
      child: const CustomerDetailView(),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/constants/sizes.dart';
import 'package:car_rental_for_car_owner/commons/utils.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_car_owner/commons/widgets/loading_widget.dart';
import 'package:car_rental_for_car_owner/pages/car_registration_detail/bloc/car_registration_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarRegistrationDetailView extends StatefulWidget {
  const CarRegistrationDetailView({super.key});

  @override
  State<CarRegistrationDetailView> createState() =>
      _CarRegistrationDetailViewState();
}

class _CarRegistrationDetailViewState extends State<CarRegistrationDetailView> {
  Widget divider = Column(
    children: const [
      SizedBox(
        height: s08,
      ),
      Divider(
        color: CustomColors.gainsboro,
        thickness: 3,
      ),
      SizedBox(
        height: s04,
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarRegistrationDetailBloc, CarRegistrationDetailState>(
      builder: (context, state) {
        final carRegistration = state.carRegistration;
        if (carRegistration == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final carImages = carRegistration.images
            ?.where((element) => element.type == 'Thumbnail')
            .toList();
        final licenseImages = carRegistration.images
            ?.where((element) => element.type != 'Thumbnail')
            .toList();

        return Scaffold(
          appBar: appAppBar(context, titleText: 'Chi tiết'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: s04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Trạng thái',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carRegistration.status == true
                              ? 'Đã được duyệt'
                              : carRegistration.status == false &&
                                      carRegistration.description != null &&
                                      carRegistration.description?.isNotEmpty ==
                                          true
                                  ? 'Bị từ chối'
                                  : 'Chưa được duyệt',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: carRegistration.status == true
                                ? CustomColors.emerald
                                : carRegistration.status == false &&
                                        carRegistration.description != null &&
                                        carRegistration
                                                .description?.isNotEmpty ==
                                            true
                                    ? CustomColors.red
                                    : CustomColors.dimGray,
                          ),
                        ),
                        const SizedBox(
                          height: s08,
                        ),
                        if (carRegistration.description != null &&
                            carRegistration.description?.isNotEmpty == true)
                          Text(
                            'Lý do: ${carRegistration.description}',
                            maxLines: 5,
                            style: const TextStyle(
                              fontSize: 14,
                              color: CustomColors.flamingo,
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                divider,
                if (carImages != null && carImages.isNotEmpty)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Hình ảnh xe',
                          child: Row(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: carImages
                                        .map(
                                          (e) => Container(
                                            height: 50,
                                            width: 50,
                                            margin: const EdgeInsets.only(
                                                right: s08),
                                            child: CachedNetworkImage(
                                                height: 50,
                                                width: 50,
                                                imageUrl: e.url,
                                                fit: BoxFit.fill,
                                                errorWidget:
                                                    (context, url, error) {
                                                  return const Icon(
                                                      Icons.error);
                                                }),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                    ],
                  ),
                if (licenseImages != null && licenseImages.isNotEmpty)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Giấy tờ xe',
                          child: Row(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: licenseImages
                                        .map(
                                          (e) => Container(
                                            height: 50,
                                            width: 50,
                                            margin: const EdgeInsets.only(
                                                right: s08),
                                            child: CachedNetworkImage(
                                                height: 50,
                                                width: 50,
                                                imageUrl: e.url,
                                                fit: BoxFit.fill,
                                                errorWidget:
                                                    (context, url, error) {
                                                  return const Icon(
                                                      Icons.error);
                                                }),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Thông tin',
                    child: SizedBox(
                      height: 380,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.all(8),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 4,
                        crossAxisCount: 2,
                        childAspectRatio: 2.5,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hãng xe',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.productionCompany,
                                maxLines: 2,
                              ),
                            ],
                          ),

                          // Text('Dòng xe: ${carRegistration.model}'),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Tên xe',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.name ?? '',
                                maxLines: 2,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Biển số xe',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.licensePlate,
                                maxLines: 2,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Năm sản xuất',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                  carRegistration.yearOfManufacture.toString()),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Số chỗ ngồi',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.seater.toString(),
                                maxLines: 2,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hộp số',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.transmissionType.toString(),
                                maxLines: 2,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Loại nguyên liệu',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.fuelType.toString(),
                                maxLines: 2,
                              ),
                            ],
                          ),
                          // Text('Khung gầm: ${carRegistration.chassis}'),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Mức tiêu thụ nguyên liệu',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.fuelConsumption.toString(),
                                maxLines: 2,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Vị trí',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                carRegistration.location.toString(),
                                maxLines: 2,
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Giá thuê',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                formatCurrency(carRegistration.price),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Phụ phí',
                    child: SizedBox(
                      height: 300,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(8),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 4,
                        crossAxisCount: 2,
                        childAspectRatio: 2.5,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Giới hạn quãng đường',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                '${carRegistration.additionalCharge.maximumDistance} km',
                                maxLines: 2,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Phụ phí vượt quãng đường',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                '${carRegistration.additionalCharge.distanceSurcharge} đ/km',
                                maxLines: 2,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Phụ phí vượt quá giờ',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: s02,
                              ),
                              Text(
                                '${carRegistration.additionalCharge.timeSurcharge} đ/h',
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

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
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.jetBlack,
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
                      height: 280,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.all(8),
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 4,
                        crossAxisCount: 2,
                        childAspectRatio: 4,
                        children: <Widget>[
                          Text('Hãng xe: ${carRegistration.productionCompany}'),
                          // Text('Dòng xe: ${carRegistration.model}'),
                          Text('Tên xe: ${carRegistration.name}'),
                          Text('Biển số xe: ${carRegistration.licensePlate}'),
                          Text(
                              'Năm sản xuất: ${carRegistration.yearOfManufacture}'),
                          Text('Số chỗ ngồi: ${carRegistration.seater}'),
                          Text(
                              'Truyền động: ${carRegistration.transmissionType}'),
                          // Text('Khung gầm: ${carRegistration.chassis}'),
                          Text('Loại nguyên liệu: ${carRegistration.fuelType}'),
                          Text(
                              'Mức tiêu thụ nguyên liệu: ${carRegistration.fuelConsumption}'),
                          Text('Vị trí: ${carRegistration.location}'),
                          Text(
                              'Giá thuê: ${formatCurrency(carRegistration.price)}'),
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
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 4,
                        crossAxisCount: 2,
                        childAspectRatio: 3,
                        children: <Widget>[
                          Text(
                              'Giới hạn quãng đường: ${carRegistration.additionalCharge.maximumDistance} km'),
                          Text(
                              'Phụ phí vượt quãng đường: ${carRegistration.additionalCharge.distanceSurcharge} đ/km'),
                          Text(
                              'Phụ phí vượt quá giờ: ${carRegistration.additionalCharge.timeSurcharge} đ/h'),
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

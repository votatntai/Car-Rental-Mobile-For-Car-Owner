import 'package:car_rental_for_car_owner/commons/constants/images.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, titleText: 'Quên mật khẩu'),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Image(
                        width: 200,
                        height: 200,
                        image: AssetImage(Images.forgotpass)),
                    const Text(
                      'Quên mật khẩu?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Vui lòng nhập tên đăng nhập của bạn để lấy lại mật khẩu',
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: inputDecoration(
                        context,
                        prefixIcon: Icons.mail_rounded,
                        hintText: 'Tên đăng nhập',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, RouteName.login);
                    },
                    child: const Text('Gửi'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

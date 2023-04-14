import 'dart:developer';
import 'dart:io';

import 'package:car_rental_for_car_owner/app/route/route_name.dart';
import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:car_rental_for_car_owner/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_car_owner/commons/widgets/message_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';

class CarOwnerPaymentWebviewView extends StatefulWidget {
  const CarOwnerPaymentWebviewView({super.key, required this.url});

  final String url;

  @override
  State<CarOwnerPaymentWebviewView> createState() =>
      _CarOwnerPaymentWebviewViewState();
}

class _CarOwnerPaymentWebviewViewState
    extends State<CarOwnerPaymentWebviewView> {
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;

  InAppWebViewGroupOptions get options => InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
          mediaPlaybackRequiresUserGesture: false,
          // contentBlockers: contentBlockers,
        ),
        android: AndroidInAppWebViewOptions(
          useHybridComposition: true,
        ),
        ios: IOSInAppWebViewOptions(
          allowsInlineMediaPlayback: true,
        ),
      );

  late PullToRefreshController pullToRefreshController;
  double progress = 0;

  @override
  void initState() {
    pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        if (Platform.isAndroid) {
          await webViewController?.reload();
        } else if (Platform.isIOS) {
          await webViewController?.loadUrl(
            urlRequest: URLRequest(url: await webViewController?.getUrl()),
          );
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // detect Android back button click
        final controller = webViewController;

        if (controller != null) {
          if (await controller.canGoBack()) {
            await controller.goBack();
            return false;
          }
        }
        return true;
      },
      child: Scaffold(
        appBar: appAppBar(
          context,
          titleText: 'Nạp tiền',
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: [
                  InAppWebView(
                    key: webViewKey,
                    initialUrlRequest: URLRequest(
                      url: Uri.parse(
                        widget.url,
                      ),
                    ),
                    initialOptions: options,
                    pullToRefreshController: pullToRefreshController,
                    onLoadStart: (controller, url) {
                      final urlStr = url?.toString() ?? '';

                      if (urlStr.contains(
                          'carrentalwebmanager.web.app/vnpay-return')) {
                        webViewController?.stopLoading();

                        showMessageDialog(
                          title: 'Nạp tiền thành công',
                          message: 'Bạn đã nạp tiền thành công',
                        ).then((value) {
                          context.goNamed(RouteName.carOwnerWallet);
                        });
                      }
                    },
                    onWebViewCreated: (controller) {
                      webViewController = controller;
                    },
                    onLoadStop: (controller, url) async {
                      await pullToRefreshController.endRefreshing();
                    },
                    onLoadError: (controller, url, code, message) {
                      pullToRefreshController.endRefreshing();
                    },
                    onProgressChanged: (controller, progress) {
                      if (progress == 100) {
                        pullToRefreshController.endRefreshing();
                      }
                      setState(() {
                        this.progress = progress / 100;
                      });
                    },
                  ),
                  if (progress < 1.0)
                    LinearProgressIndicator(
                      value: progress,
                      minHeight: 2,
                      backgroundColor: CustomColors.background,
                    )
                  else
                    Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

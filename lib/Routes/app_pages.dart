import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.splashView;
  static Map<String, WidgetBuilder> routes = {
    // Routes.splashView: (context) => const SplashView(),
  };
}

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print('page : ${page?.name}');
    return super.onPageCalled(page);
  }
}
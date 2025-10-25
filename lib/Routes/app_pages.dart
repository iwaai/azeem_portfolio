import 'package:jibrantalib/Views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.mainView;
  static Map<String, WidgetBuilder> routes = {
    Routes.mainView: (context) => const MainView(),
  };
}

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print('page : ${page?.name}');
    return super.onPageCalled(page);
  }
}

import '/Controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:get/get.dart';
import 'Constants/app_colors.dart';
import 'Controllers/theme_controller.dart';
import 'Routes/app_pages.dart';
import 'Routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => ThemeController(), fenix: true);
  Get.put(() => ThemeController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        autoRemove: false,
        builder: (theme) {
          return FlutterBootstrap5(builder: (ctx) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialBinding: InitialBindings(),
              title: 'Azeem khan',
              initialRoute: Routes.mainView,
              routes: AppPages.routes,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: child!,
                );
              },
              theme: AppColors.getLightTheme(),
              darkTheme: AppColors.getDarkTheme(),
              themeMode:
                  // ThemeMode.dark
                  (theme.darkMode) ? ThemeMode.dark : ThemeMode.light,
            );
          });
        });
  }
}

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeController(), fenix: true);
    Get.lazyPut(() => MainController(), fenix: true);
  }
}

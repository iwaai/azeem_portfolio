import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ThemeController extends GetxController {
  bool _darkMode = false;
  bool get darkMode => _darkMode;

  set darkMode(bool val){
    _darkMode = val;
    update();
  }
  @override
  void onInit() {
    _getThemeMode();
    super.onInit();
  }
  _getThemeMode(){
    if(Get.context != null){
      Brightness deviceThemeMode = MediaQuery.of(Get.context!).platformBrightness;
      _darkMode = deviceThemeMode == Brightness.light ? false : true;
      update();
    }

  }

}

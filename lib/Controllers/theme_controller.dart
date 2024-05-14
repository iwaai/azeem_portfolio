import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class ThemeController extends GetxController {
  bool _darkMode = false;
  bool get darkMode => _darkMode;

  set darkMode(bool val){
    _darkMode = val;
    _statusBarSettings();
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
      _statusBarSettings();
      update();
    }

  }

  _statusBarSettings(){
    if(!kIsWeb){
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
          statusBarBrightness: _darkMode ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: _darkMode ? Brightness.light : Brightness.dark,
          statusBarColor: _darkMode ? Colors.black : Colors.white
      ));
    }
  }

}

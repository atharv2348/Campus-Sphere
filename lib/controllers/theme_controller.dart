import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_campus/utils/local_storage.dart';

class ThemeController extends GetxController {
  Rx<bool> isDarkMode =
      (LocalStorage.getBool(LocalStorage.themeKey) ?? false).obs;

  static const palate1 = Color(0xff555B6E);
  static const palate2 = Color(0xFF89B0AE);
  static const palate3 = Color(0xFFBEE3DB);
  static const palate4 = Color(0xFFFAF9F9);
  static const palate5 = Color(0xFFFFD6BA);

  static const palate6 = Color(0xFF2E3039);

  static Rx<Color> appbarBackgroundColor =
      (LocalStorage.getBool(LocalStorage.themeKey) ?? false)
          ? palate4.obs
          : palate1.obs;
  static Rx<Color> appbarTextColor =
      (LocalStorage.getBool(LocalStorage.themeKey) ?? false)
          ? palate4.obs
          : palate4.obs;
  static Rx<Color> scaffoldBackgroudColor =
      (LocalStorage.getBool(LocalStorage.themeKey) ?? false)
          ? palate6.obs
          : palate4.obs;

  static Rx<Color> scaffoldTextColor =
      (LocalStorage.getBool(LocalStorage.themeKey) ?? false)
          ? palate4.obs
          : palate1.obs;

  void toggleTheme(bool value) async {
    value ? isDarkMode.value = true : isDarkMode.value = false;
    if (value) {
      // set to dark mode
      appbarBackgroundColor.value = palate1;
      appbarTextColor.value = palate4;
      scaffoldBackgroudColor.value = palate6;
      scaffoldTextColor.value = palate4;
    } else {
      // set to light mode
      appbarBackgroundColor.value = palate1;
      appbarTextColor.value = palate4;
      scaffoldBackgroudColor.value = palate4;
      scaffoldTextColor.value = palate1;
    }
    await LocalStorage.setBool(LocalStorage.themeKey, value);
  }
}

// true for dark mode
// false for light theme
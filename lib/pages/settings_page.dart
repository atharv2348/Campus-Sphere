import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:get/get.dart';
import 'package:smart_campus/utils/local_storage.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("✅ ${LocalStorage.getBool(LocalStorage.themeKey)}");
      }),
      appBar: PrimaryAppBar(
        title: "Settings",
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Switch(
                value: themeController.isDarkMode.value,
                onChanged: (value) async {
                  themeController.toggleTheme(value);
                  await LocalStorage.setBool(LocalStorage.themeKey, value);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: AppColors.palate1,
              height: 80,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: AppColors.palate2,
              height: 80,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: AppColors.palate3,
              height: 80,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: AppColors.palate4,
              height: 80,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: AppColors.palate5,
              height: 80,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}

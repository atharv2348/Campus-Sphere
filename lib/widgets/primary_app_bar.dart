import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:get/get.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const PrimaryAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppBar(
        backgroundColor: ThemeController.appbarBackgroundColor.value,
        title: Text(
          title ?? "Campus Sphere",
          style: TextStyle(
            color: ThemeController.appbarTextColor.value,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

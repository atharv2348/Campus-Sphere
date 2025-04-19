import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/models/document_list_model.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';
import 'package:smart_campus/utils/navigation.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final String? route;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final bool textPadding;
  final int index;
  const InfoContainer({
    super.key,
    required this.title,
    this.route,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.textPadding = false,
    this.index = 1,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != null) {
          context.push(route!, extra: title);
        } else if (title.startsWith("+")) {
          AppUrlLauncher.launchPhone(title);
        }
      },
      child: Container(
        constraints: BoxConstraints(
          minHeight: 50,
        ),
        margin: const EdgeInsets.symmetric(vertical: 1),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          color: AppColors.palate5,
          borderRadius: BorderRadius.circular(12),
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(textPadding ? 12 : 0),
            child: Text(
              textAlign: textAlign ?? TextAlign.center,
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize ?? 18,
                fontWeight: fontWeight ?? FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    )
        .animate(
          delay: Duration(
            milliseconds: 200 * (index % 10),
          ),
        )
        .fadeIn(
          duration: Duration(
            milliseconds: 600,
          ),
          curve: Curves.easeInOut,
        )
        .slideY(
          begin: 0.5,
          end: 0,
          curve: Curves.easeInOutQuint,
        );
  }
}

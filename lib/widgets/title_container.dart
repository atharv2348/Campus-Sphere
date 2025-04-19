import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/link_controller.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';

class TitleContainer extends StatelessWidget {
  final String title;
  final String? link;
  final String? url;
  const TitleContainer({
    super.key,
    required this.title,
    this.link,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    final LinkController linkController = Get.find<LinkController>();
    return Animate(
      // effects: [
      //   FadeEffect(
      //     duration: Duration(
      //       milliseconds: 300,
      //     ),
      //   ),
      //   SlideEffect(
      //     begin: Offset(0, 2),
      //     end: Offset(0, 0),
      //     duration: Duration(
      //       seconds: 1,
      //     ),
      //   ),
      // ],
      child: GestureDetector(
        onTap: () {
          if (link != null) {
            final url = linkController.getLink(link ?? "");
            AppUrlLauncher.lauchTheUrl(url);
          } else if (title.startsWith('+9')) {
            AppUrlLauncher.launchPhone(title);
          } else if (url != null) {
            AppUrlLauncher.lauchTheUrl(url!);
          }
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.palate2,
            borderRadius: BorderRadius.circular(12),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

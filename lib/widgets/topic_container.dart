import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';

class TopicContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final String? newPage;
  final String? link;
  final String? imageUrl;
  const TopicContainer({
    super.key,
    required this.text,
    required this.imagePath,
    this.newPage,
    this.link,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
          duration: Duration(
            milliseconds: 800,
          ),
        ),
        SlideEffect(
          begin: Offset(0, 2),
          end: Offset(0, 0),
          duration: Duration(
            seconds: 1,
          ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(12),
          child: GestureDetector(
            onTap: () {
              HapticFeedback.heavyImpact();
              if (link != null) {
                AppUrlLauncher.lauchTheUrl(link!);
              } else if (newPage != null) {
                context.push('$newPage');
              }
            },
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.palate5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  imageUrl == null
                      ? Image.asset(
                          height: 50,
                          width: 50,
                          imagePath,
                        )
                      : CachedNetworkImage(
                          height: 50,
                          width: 50,
                          imageUrl: imageUrl ??
                              "https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/new_assets%2Fimages%2Fjee_main.png?alt=media&token=e6cba4fd-cd01-4d5f-87b7-bbacc3a658ed",
                        ),
                  const SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

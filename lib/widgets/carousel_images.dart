import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/home_page_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CarouselImages extends StatelessWidget {
  const CarouselImages({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController = Get.find();
    return Obx(
      () {
        if (homePageController.homepageImages.isEmpty) {
          return Animate(
            effects: [
              FadeEffect(
                  duration: Duration(
                milliseconds: 100,
              ))
            ],
            child: Container(
              constraints: BoxConstraints(
                maxHeight: 600,
                maxWidth: 600,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/gcek1.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width * 0.9,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            ),
          );
        }
        return Animate(
          effects: [
            FadeEffect(
              duration: Duration(
                seconds: 2,
              ),
            ),
          ],
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 600,
              maxWidth: 600,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.palate5,
            ),
            height: MediaQuery.of(context).size.width * 0.9,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                errorWidget: (context, url, error) {
                  return Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/gcek1.jpg',
                    ),
                  );
                },
                placeholder: (context, url) {
                  return Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/gcek1.jpg',
                    ),
                  );
                },
                imageUrl: homePageController
                    .homepageImages[homePageController.currentIndex.value],
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}

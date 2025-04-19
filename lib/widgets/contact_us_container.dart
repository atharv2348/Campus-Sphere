import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/constants/code_constants.dart';
import 'package:smart_campus/controllers/contact_us_controller.dart';
import 'package:smart_campus/controllers/link_controller.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';

class ContactUsContainer extends StatelessWidget {
  const ContactUsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final LinkController linkController = Get.find();
    final ContactUsController contactUsController = Get.find();
    return Obx(
      () {
        if (contactUsController.data == {}) {
          return SizedBox();
        }
        return Animate(
          effects: [FadeEffect(), SlideEffect()],
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: AppColors.palate1,
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CONTACT US",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.palate4,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      divider_line(context),
                      SizedBox(
                        height: 5,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Government College of Enginnering, Karad",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.palate4,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "(An Autonomous Instiute of Government of Mahartashtra)",
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.palate4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      divider_line(context),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: contactUsController.data.entries.map(
                      (e) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: customRichText(
                            firstText: e.key,
                            secondText: e.value,
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     customRichText(
                  //       firstText: 'Address',
                  //       secondText:
                  //           'Vidyanagar, Karad, Dist: Satara, Maharashtra (India) - 415124',
                  //     ),
                  //     SizedBox(
                  //       height: 10,
                  //     ),
                  //     customRichText(
                  //       firstText: 'Contact',
                  //       secondText: '9545272414',
                  //     ),
                  //     SizedBox(
                  //       height: 10,
                  //     ),
                  //     customRichText(
                  //       firstText: 'Visit Website',
                  //       secondText: 'https://www.gcekarad.ac.in',
                  //     ),
                  //     SizedBox(
                  //       height: 10,
                  //     ),
                  //     GestureDetector(
                  //       onTap: () {
                  //         AppUrlLauncher.launchEmail();
                  //       },
                  //       child: customRichText(
                  //         firstText: 'Email',
                  //         secondText: 'admin.mis@gcekarad.ac.in',
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  divider_line(context),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                      ),
                      Text(
                        "Follow us",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.palate4,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          SocialMediaIcon(
                            path: 'assets/app_icons/linkdin.png',
                            key: CodeConstants.linkedin,
                          ),
                          SocialMediaIcon(
                            path: 'assets/app_icons/facebook.png',
                            key: CodeConstants.facebook,
                          ),
                          SocialMediaIcon(
                            path: 'assets/app_icons/youtube.png',
                            key: CodeConstants.youtube,
                          ),
                          SocialMediaIcon(
                            path: 'assets/app_icons/twitter.png',
                            key: CodeConstants.twitter,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "© 2025 Campus Sphere. All rights reserved.",
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.palate4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () async {
                          String url = linkController
                              .getLink(CodeConstants.privacyPolicy);
                          AppUrlLauncher.lauchTheUrl(
                            url,
                          );
                        },
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  GestureDetector SocialMediaIcon({
    required String key,
    required String path,
  }) {
    LinkController linkController = Get.find();
    return GestureDetector(
      onTap: () {
        String url = linkController.getLink(key);
        AppUrlLauncher.lauchTheUrl(
          url,
        );
      },
      child: Image.asset(
        path,
        height: 30,
        width: 30,
      ),
    );
  }

  RichText customRichText({
    required String firstText,
    required String secondText,
    String method = 'website',
  }) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText + ': ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
              text: secondText,
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  if (secondText.startsWith('+')) {
                    AppUrlLauncher.launchPhone(secondText);
                  } else if (secondText.contains('@')) {
                    AppUrlLauncher.launchEmail(secondText);
                  } else if (secondText.startsWith('http')) {
                    AppUrlLauncher.lauchTheUrl(secondText);
                  }
                }),
        ],
      ),
    );
  }

  Container divider_line(BuildContext context) {
    return Container(
      height: 2,
      width: MediaQuery.of(context).size.width,
      color: AppColors.palate4,
    );
  }
}

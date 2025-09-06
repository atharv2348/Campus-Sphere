import 'package:flutter/material.dart';
import 'package:smart_campus/controllers/news_and_update_controller.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/carousel_images.dart';
import 'package:smart_campus/widgets/contact_us_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:get/get.dart';
import 'package:smart_campus/widgets/title_container.dart';
import 'package:smart_campus/widgets/topic_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsAndUpdateController newsAndUpdateController = Get.find();
    return Obx(
      () => Scaffold(
        appBar: const PrimaryAppBar(),
        backgroundColor: ThemeController.scaffoldBackgroudColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                const CarouselImages(),
                const SizedBox(
                  height: 20,
                ),
                const TitleContainer(
                  title: 'Important',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Wrap(
                  runSpacing: 10,
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  children: [
                    TopicContainer(
                      newPage: Navigation.admissionRoute,
                      text: "Admission",
                      imagePath: 'assets/app_icons/admission.png',
                    ),
                    TopicContainer(
                      text: "Document",
                      imagePath: 'assets/app_icons/document.png',
                      newPage: Navigation.documentsRoute,
                    ),
                    TopicContainer(
                      text: "Scholarship",
                      imagePath: 'assets/app_icons/scholarship.png',
                      newPage: Navigation.scholarshipRoute,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const TitleContainer(
                  title: 'News And Updates',
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => newsAndUpdateController.data.isEmpty
                      ? const SizedBox()
                      : Wrap(
                          runSpacing: 10,
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          children: newsAndUpdateController.data
                              .map(
                                (model) => TopicContainer(
                                  text: model.name ?? "",
                                  imagePath: model.imageUrl ?? "",
                                  link: model.url,
                                  imageUrl: model.imageUrl,
                                ),
                              )
                              .toList(),
                          // children: [
                          //   TopicContainer(
                          //     text: 'MHT-CET',
                          //     imagePath: 'assets/app_icons/mht_cet.png',
                          //   ),
                          //   TopicContainer(
                          //     text: 'JEE Main',
                          //     imagePath: 'assets/app_icons/jee_main.png',
                          //   ),
                          //   TopicContainer(
                          //     text: 'Cap Round',
                          //     imagePath: 'assets/app_icons/cap_round.png',
                          //   ),
                          //   TopicContainer(
                          //     text: 'GCEK Web',
                          //     imagePath: 'assets/app_icons/gcek_logo.png',
                          //   ),
                          // ],
                        ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TitleContainer(
                  title: 'About GCEK',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    TopicContainer(
                      text: 'About GCEK',
                      imagePath: 'assets/app_icons/about_gcek.png',
                      newPage: Navigation.aboutGCEKRoute,
                    ),
                    TopicContainer(
                      text: 'Branches',
                      imagePath: 'assets/app_icons/branches.png',
                      newPage: Navigation.branchRoute,
                    ),
                    TopicContainer(
                      text: 'Placement',
                      imagePath: 'assets/app_icons/placement.png',
                      newPage: Navigation.placementRecordRoute,
                    ),
                    TopicContainer(
                      text: 'College Clubs',
                      imagePath: 'assets/app_icons/campus_life.png',
                      newPage: Navigation.clubLandingRoute,
                    ),
                    TopicContainer(
                      text: 'Facilities',
                      imagePath: 'assets/app_icons/facility.png',
                      newPage: Navigation.facilitiesRoute,
                    ),
                    // TopicContainer(
                    //   text: 'Placement Galary',
                    //   imagePath: 'assets/app_icons/placement.png',
                    // ),
                    // TopicContainer(
                    //   text: 'Services',
                    //   imagePath: 'assets/app_icons/services.png',
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const ContactUsContainer(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_campus/controllers/club_controller.dart';
import 'package:smart_campus/pages/clubs/club_logo_card.dart';
import 'package:smart_campus/pages/main_pages/about_gcek_page.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ClubLandingPage extends StatelessWidget {
  const ClubLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ClubController clubController = Get.find();
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'GCEK Clubs',
      ),
      body: Obx(() {
        if (clubController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (clubController.error.value != '') {
          return Center(
            child: Text(clubController.error.value),
          );
        } else if (clubController.clubs.isNotEmpty) {
          return GridView.builder(
            itemCount: clubController.clubs.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return ClubLogoCard(
                clubModel: clubController.clubs[index],
              )
                  .animate(
                    delay: Duration(
                      milliseconds: 200 * (index % 10),
                    ),
                  )
                  .fadeIn(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInQuint,
                  )
                  .slideY(
                    begin: 0.2,
                    end: 0,
                    duration: Duration(
                      milliseconds: 400,
                    ),
                    curve: Curves.easeInQuint,
                  );
            },
          );
        } else {
          return Center(child: Text("Something went wrong!"));
        }
      }),
    );
  }
}

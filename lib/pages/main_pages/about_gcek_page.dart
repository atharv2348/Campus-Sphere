import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/data/about_gcek_data.dart';
import 'package:smart_campus/widgets/carousel_images.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class AboutGcekPage extends StatelessWidget {
  const AboutGcekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'About GCEK',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              InfoContainer(
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                title: AboutGcekData.message1,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.9,
                  'assets/images/gcek1.jpg',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InfoContainer(
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                title: AboutGcekData.message2,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.9,
                  'assets/images/gcek2.png',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(title: 'Institude Vision'),
              InfoContainer(
                title: AboutGcekData.institudeVision,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(title: 'Institude Mission'),
              InfoContainer(
                title: AboutGcekData.institudeMission,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(title: 'Institude Objective'),
              InfoContainer(
                title: AboutGcekData.institudeObjective,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(title: 'Short Range Goals'),
              InfoContainer(
                title: AboutGcekData.shortRangeGoals,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(title: 'Principal'),
              SizedBox(
                height: 5,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.9,
                  'assets/images/principal.jfif',
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "DR. Vinayak N. Kulkarni",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TitleContainer(
                title: "Principal's Message",
              ),
              InfoContainer(
                title: AboutGcekData.principalMessage,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
            ]
                .animate(
                  delay: Duration(
                    milliseconds: 100,
                  ),
                )
                .fadeIn(
                  duration: Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.easeInQuint,
                )
                .slideY(
                  begin: 0.1,
                  end: 0,
                  curve: Curves.easeInQuint,
                  duration: Duration(
                    milliseconds: 400,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/data/about_gcek_data.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class AboutGcekPage extends StatelessWidget {
  const AboutGcekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'About GCEK',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              const InfoContainer(
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                title: AboutGcekData.message1,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.9,
                  'assets/images/gcek1.jpg',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const InfoContainer(
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                title: AboutGcekData.message2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.9,
                  'assets/images/gcek2.png',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(title: 'Institude Vision'),
              const InfoContainer(
                title: AboutGcekData.institudeVision,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(title: 'Institude Mission'),
              const InfoContainer(
                title: AboutGcekData.institudeMission,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(title: 'Institude Objective'),
              const InfoContainer(
                title: AboutGcekData.institudeObjective,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(title: 'Short Range Goals'),
              const InfoContainer(
                title: AboutGcekData.shortRangeGoals,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(title: 'Principal'),
              const SizedBox(
                height: 5,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.9,
                  'assets/images/principal.jfif',
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                "DR. Vinayak N. Kulkarni",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(
                title: "Principal's Message",
              ),
              const InfoContainer(
                title: AboutGcekData.principalMessage,
                textPadding: true,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.start,
              ),
            ]
                .animate(
                  delay: const Duration(
                    milliseconds: 100,
                  ),
                )
                .fadeIn(
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.easeInQuint,
                )
                .slideY(
                  begin: 0.1,
                  end: 0,
                  curve: Curves.easeInQuint,
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

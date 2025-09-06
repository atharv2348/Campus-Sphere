import 'package:flutter/material.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: "Admission Info",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 10,
              ),
              const TitleContainer(
                title: 'Engineering DTE Code',
              ),
              const InfoContainer(
                title: "EN - 6005",
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleContainer(
                title: 'GCEK Admission Office',
              ),
              const InfoContainer(
                title: "+919545272414",
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleContainer(
                title: 'Admission Incharge',
              ),
              GestureDetector(
                onTap: () {
                  AppUrlLauncher.launchPhone("+919545272414");
                },
                child: const InfoContainer(
                  title: "+919545272414",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleContainer(
                title: 'Get more info here',
                link: 'gcek_old',
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleContainer(
                title: 'Get GCEK Cutoff here',
                link: 'gcek_cutoff',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

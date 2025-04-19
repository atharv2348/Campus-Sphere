import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_campus/controllers/link_controller.dart';
import 'package:smart_campus/main.dart';
import 'package:smart_campus/utils/app_url_launcher.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LinkController linkController = Get.find<LinkController>();
    return Scaffold(
      appBar: PrimaryAppBar(
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
              SizedBox(
                height: 10,
              ),
              TitleContainer(
                title: 'Engineering DTE Code',
              ),
              InfoContainer(
                title: "EN - 6005",
              ),
              SizedBox(
                height: 20,
              ),
              TitleContainer(
                title: 'GCEK Admission Office',
              ),
              InfoContainer(
                title: "+919545272414",
              ),
              SizedBox(
                height: 20,
              ),
              TitleContainer(
                title: 'Admission Incharge',
              ),
              GestureDetector(
                onTap: () {
                  AppUrlLauncher.launchPhone("+919545272414");
                },
                child: InfoContainer(
                  title: "+919545272414",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TitleContainer(
                title: 'Get more info here',
                link: 'gcek_old',
              ),
              SizedBox(
                height: 20,
              ),
              TitleContainer(
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

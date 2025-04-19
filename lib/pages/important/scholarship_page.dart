import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_campus/data/scholarship_data.dart';
import 'package:smart_campus/pages/main_pages/about_gcek_page.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ScholarshipPage extends StatelessWidget {
  const ScholarshipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: "Scholarships",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
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
              TitleContainer(title: 'Scholarships'),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: ScholarshipData.ScholarshipsDetails.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.3,
                          ),
                          child: InfoContainer(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            title: ScholarshipData
                                .ScholarshipsDetails[index].keys.first,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.6,
                          ),
                          child: InfoContainer(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            title: ScholarshipData
                                .ScholarshipsDetails[index].values.first,
                          ),
                        ),
                      ],
                    ),
                  )
                      .animate(
                        delay: Duration(
                          milliseconds: 200 * (index % 10),
                        ),
                      )
                      .fadeIn(
                        curve: Curves.easeInQuint,
                        duration: Duration(
                          milliseconds: 400,
                        ),
                      )
                      .slideY(
                        duration: Duration(milliseconds: 400),
                        begin: 0.5,
                        end: 0,
                        curve: Curves.easeInQuint,
                      );
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

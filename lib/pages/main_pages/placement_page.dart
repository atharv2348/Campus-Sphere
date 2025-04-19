import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/data/placement_data.dart';
import 'package:smart_campus/pages/main_pages/about_gcek_page.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PlacementPage extends StatelessWidget {
  const PlacementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PrimaryAppBar(
          title: 'Placement Records',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Center(
                child: Wrap(
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: PlacementData.years
                  .map(
                    (e) {
                      return GestureDetector(
                        onTap: () {
                          context.push(
                            Navigation.pdfViewRoute,
                            extra: e,
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.palate3,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 60,
                          width: 150,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Text('Year 20${e}'),
                          )),
                        ),
                      );
                    },
                  )
                  .toList()
                  .animate(
                    delay: Duration(
                      milliseconds: 400,
                    ),
                  )
                  .fadeIn(
                    duration: Duration(
                      milliseconds: 400,
                    ),
                    curve: Curves.easeIn,
                  )
                  .slideY(
                    begin: 0.5,
                    end: 0,
                    duration: Duration(
                      milliseconds: 400,
                    ),
                  ),
            )),
          ),
        ));
  }
}

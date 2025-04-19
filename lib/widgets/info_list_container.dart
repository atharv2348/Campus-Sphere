import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/widgets/info_container.dart';

class InfoListContainer extends StatelessWidget {
  final List<String> data;
  const InfoListContainer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.symmetric(vertical: 1),
            decoration: BoxDecoration(
              color: AppColors.palate5,
              borderRadius: BorderRadius.circular(12),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(
                    textAlign: TextAlign.start,
                    "- ${data[index]}",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                );
              },
            ))
        .animate(
          delay: Duration(
            milliseconds: 500,
          ),
        )
        .fadeIn(
          duration: Duration(
            milliseconds: 400,
          ),
        )
        .slideY(
          begin: 0.5,
          end: 0,
          curve: Curves.easeInQuint,
        );
  }
}

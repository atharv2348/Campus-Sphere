import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_campus/constants/app_colors.dart';

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
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(
                    textAlign: TextAlign.start,
                    "- ${data[index]}",
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                );
              },
            ))
        .animate(
          delay: const Duration(
            milliseconds: 500,
          ),
        )
        .fadeIn(
          duration: const Duration(
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

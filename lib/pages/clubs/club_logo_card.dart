import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/models/club_model.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_campus/utils/navigation.dart';

class ClubLogoCard extends StatelessWidget {
  final ClubModel clubModel;
  const ClubLogoCard({
    super.key,
    required this.clubModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          context.push(Navigation.clubDetailsPageRoute, extra: clubModel);
        },
        child: Hero(
          tag: 'logo',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: clubModel.logoUrl ?? "",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smart_campus/data/facilities_data.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';

class FacilitiesPage extends StatelessWidget {
  const FacilitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'Facilities',
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: FacilitiesData.features.length,
          itemBuilder: (context, index) {
            return InfoContainer(
              index: index,
              fontSize: 16,
              fontWeight: FontWeight.normal,
              title: FacilitiesData.features[index],
            );
          },
        ),
      ),
    );
  }
}

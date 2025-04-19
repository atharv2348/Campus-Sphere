import 'package:flutter/material.dart';
import 'package:smart_campus/data/branches_data.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class BranchesPage extends StatelessWidget {
  const BranchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'Branches',
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
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: BranchesData.allBranches.length,
                itemBuilder: (context, index) {
                  return InfoContainer(
                    index: index,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    title: BranchesData.allBranches[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

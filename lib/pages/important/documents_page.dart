import 'package:flutter/material.dart';
import 'package:smart_campus/data/documents_data.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: "Documents",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleContainer(
                title: 'Select Your Category',
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: DocumentsData.categories.length,
                itemBuilder: (context, index) {
                  return InfoContainer(
                    index: index,
                    fontSize: 16,
                    title: DocumentsData.categories[index],
                    route: Navigation.documentListRoute,
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

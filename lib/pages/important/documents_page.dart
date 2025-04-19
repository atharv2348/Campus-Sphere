import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_campus/data/documents_data.dart';
import 'package:smart_campus/models/document_list_model.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class DocumentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: "Documents",
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
                height: 20,
              ),
              TitleContainer(
                title: 'Select Your Category',
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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

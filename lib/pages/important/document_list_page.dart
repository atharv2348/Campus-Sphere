import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_campus/data/documents_data.dart';
import 'package:smart_campus/models/document_list_model.dart';
import 'package:smart_campus/widgets/info_container.dart';
import 'package:smart_campus/widgets/info_list_container.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:smart_campus/widgets/title_container.dart';

class DocumentListPage extends StatelessWidget {
  final String categoryName;
  const DocumentListPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: categoryName,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            12,
          ),
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
              TitleContainer(title: 'Eligibility Criteria'),
              InfoListContainer(
                data: DocumentsData.eligibility[categoryName] ??
                    DocumentsData.normalEligibility,
              ),
              SizedBox(
                height: 20,
              ),
              TitleContainer(title: 'Income Certificate'),
              InfoContainer(
                  fontSize: 14,
                  title: DocumentsData.incomeCertificate[categoryName] ??
                      'Not Required'),
              SizedBox(
                height: 20,
              ),
              TitleContainer(title: 'Documents Required'),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DocumentsData.documents[categoryName]!.length,
                itemBuilder: (context, index) {
                  return InfoContainer(
                    title: DocumentsData.documents[categoryName]![index],
                    index: index,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
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

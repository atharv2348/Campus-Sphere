import 'package:flutter/material.dart';
import 'package:smart_campus/widgets/primary_app_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatefulWidget {
  final year;
  const PdfView(this.year, {super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    String name = "${"assets/pdfs/" + widget.year}.pdf";
    return SafeArea(
      child: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: const Size.fromHeight(60),
        //   child: AppBar(
        //     iconTheme: IconThemeData(color: Colors.white),
        //     leading: GestureDetector(
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //         child: const Icon(Icons.arrow_back)),
        //     elevation: 0,
        //     title: Text(
        //       'Year 20' + widget.year,
        //       style: const TextStyle(
        //         color: Colors.white,
        //         fontSize: 30,
        //         fontFamily: 'Poppins',
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     centerTitle: true,
        //   ),
        // ),
        appBar: PrimaryAppBar(
          title: 'Year 20' + widget.year,
        ),
        body: SfPdfViewer.asset(name),
        backgroundColor: const Color(0xFFf2e9e4),
      ),
    );
  }
}

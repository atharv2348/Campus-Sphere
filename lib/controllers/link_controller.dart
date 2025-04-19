import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:smart_campus/constants/code_constants.dart';

class LinkController extends GetxController {
  final links = <String, String>{}.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDynamicLinks();
  }

  Future<void> fetchDynamicLinks() async {
    try {
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection(CodeConstants.firestoreDynamicLinks)
          .doc(CodeConstants.firestoreDynamicLinks)
          .get();
      if (doc.exists) {
        links.clear();
        final data = doc.data() as Map<String, dynamic>;

        data.forEach((key, value) {
          links[key] = value.toString();
        });
      }
    } catch (e) {
      links.clear();
    }
  }

  String getLink(String key) {
    return links.containsKey(key) ? links[key] ?? "" : "";
  }
}

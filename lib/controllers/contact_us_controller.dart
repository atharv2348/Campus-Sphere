import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController {
  final data = <String, String>{}.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    final DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('dynamic_links')
        .doc('contact_us')
        .get();
    if (doc.exists) {
      final apiData = doc.data() as Map<String, dynamic>;
      apiData.forEach(
        (key, value) {
          data[key] = value.toString();
        },
      );
    }
  }
}

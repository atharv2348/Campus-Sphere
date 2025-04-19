import 'package:cloud_firestore/cloud_firestore.dart';

class DynamicLinks {
  static Future<String> getUrl({required String key}) async {
    try {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      final collection = firestore.collection('dynamic_links').doc(key);
      final document = await collection.get();
      if (!document.exists) {
        return "";
      }
      return document[key].toString();
    } catch (e) {
      return "";
    }
  }
}

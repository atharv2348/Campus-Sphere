import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:smart_campus/constants/code_constants.dart';
import 'package:smart_campus/models/news_and_updates_model.dart';

class NewsAndUpdateController extends GetxController {
  RxList<NewsAndUpdatesModel> data = <NewsAndUpdatesModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection(CodeConstants.newsAndUpdates);

      QuerySnapshot querySnapshot = await collection.get();

      data.clear();
      for (var doc in querySnapshot.docs) {
        // data.add(NewsAndUpdatesModel.fromJson({
        //   'name': doc['name'],
        //   'url': doc['url'],
        //   'imageUrl': doc['imageUrl'],
        // }));
        print(doc.data());
        final docData = doc.data() as Map<String, dynamic>;
        data.add(NewsAndUpdatesModel.fromJson(docData));
      }
    } catch (e) {
      print("🚨 ${e}");
    }
  }
}

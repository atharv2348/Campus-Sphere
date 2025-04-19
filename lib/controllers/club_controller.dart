import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:smart_campus/models/club_model.dart';

class ClubController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ClubModel> clubs = <ClubModel>[].obs;
  RxString error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchClubData();
  }

  Future<void> fetchClubData() async {
    try {
      isLoading.value = true;
      final CollectionReference clubCollection =
          FirebaseFirestore.instance.collection('clubs');
      final QuerySnapshot dataSnapshot = await clubCollection.get();
      clubs.clear();
      for (var club in dataSnapshot.docs) {
        final Map<String, dynamic> data = club.data() as Map<String, dynamic>;
        clubs.add(ClubModel.fromJson(data));
      }
      error.value = '';
      isLoading.value = false;
    } catch (e) {
      print("Something went wrong ! ${e}");
      error.value = e.toString();
      clubs.clear();
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }
}

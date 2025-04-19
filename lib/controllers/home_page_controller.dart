import 'dart:async';

import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePageController extends GetxController {
  RxList<String> homepageImages = <String>[].obs;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    fetchCarouselImages();
    changeImageIndex();
    super.onInit();
  }

  void changeImageIndex() {
    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        if (homepageImages.isNotEmpty) {
          if (currentIndex < homepageImages.length - 1) {
            currentIndex.value++;
          } else {
            currentIndex.value = 0;
          }
        }
      },
    );
  }

  void fetchCarouselImages() async {
    print("✅ function is called!");
    homepageImages.value = <String>[];
    try {
      final storageRef = FirebaseStorage.instance.ref().child('carousel');
      final result = await storageRef.listAll();
      for (var ref in result.items) {
        String downloadUrl = await ref.getDownloadURL();
        homepageImages.add(downloadUrl);
      }
    } catch (e) {
      print("✅ ${e}");
      homepageImages.value = <String>[];
    }
  }
}

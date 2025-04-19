import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_campus/constants/app_colors.dart';
import 'package:smart_campus/controllers/club_controller.dart';
import 'package:smart_campus/controllers/contact_us_controller.dart';
import 'package:smart_campus/controllers/home_page_controller.dart';
import 'package:smart_campus/controllers/link_controller.dart';
import 'package:smart_campus/controllers/news_and_update_controller.dart';
import 'package:smart_campus/controllers/theme_controller.dart';
import 'package:smart_campus/firebase_options.dart';
import 'package:smart_campus/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:smart_campus/utils/dynamic_links.dart';
import 'package:smart_campus/utils/local_storage.dart';
import 'package:smart_campus/utils/navigation.dart';
import 'package:smart_campus/widgets/contact_us_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await LocalStorage.init();
  Get.put(ThemeController());
  Get.put(HomePageController());
  Get.put(LinkController());
  Get.put(ContactUsController());
  Get.put(NewsAndUpdateController());
  Get.put(ClubController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: Navigation.router,
    );
  }
}

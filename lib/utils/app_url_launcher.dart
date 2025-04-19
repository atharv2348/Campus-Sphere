import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncher {
  static void lauchTheUrl(String URL) async {
    if (URL == "") {
      print("✅ , URL IS NULL");
      return;
    }
    print("✅ launching URL ${URL}");
    final uri = Uri.parse(URL);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch ${URL}');
    }
  }

  static void launchEmail(String email) async {
    final uri = Uri(scheme: 'mailto', path: email);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch ${email}');
    }
  }

  static void launchPhone(String phoneNumber) async {
    final uri = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(uri)) {
      print("🚨 alert launching phone");
      throw Exception('Could not launch ${phoneNumber}');
    }
  }
}

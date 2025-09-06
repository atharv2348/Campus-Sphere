import 'package:url_launcher/url_launcher.dart';

class AppUrlLauncher {
  static void lauchTheUrl(String url) async {
    if (url == "") {
      return;
    }
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  static void launchEmail(String email) async {
    final uri = Uri(scheme: 'mailto', path: email);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $email');
    }
  }

  static void launchPhone(String phoneNumber) async {
    final uri = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $phoneNumber');
    }
  }
}

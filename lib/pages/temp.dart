import 'package:flutter/material.dart';

class TEMP extends StatelessWidget {
  const TEMP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Campus Sphere"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            const Text(
              "Welcome to Campus Sphere App",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.push(Navigation.settingsRoute);
            //   },
            //   child: Text("Settings"),
            // )
          ],
        ),
      ),
    );
  }
}

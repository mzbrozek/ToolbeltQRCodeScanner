import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/pages/about_page.dart';
import 'package:toolbeltqrcodescanner/pages/home_page.dart';

void main() {
  runApp(const QrCodeScanner());
}

class QrCodeScanner extends StatelessWidget {
  const QrCodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          '/home': (context) => const HomePage(),
          '/about': (context) => const AboutPage(),
        });
  }
}

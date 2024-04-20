import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ui/menu/hamburger_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          'A B O U T',
          style: GoogleFonts.abel(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      drawer: const HamburgerMenu(),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            'Simple QR code scanner. Free. Forever.\nDeveloped by Michal Z.',
          ),
        ),
      ),
    );
  }
}

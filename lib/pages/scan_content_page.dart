import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toolbeltqrcodescanner/features/scanner/scanner_image.dart';
import 'package:toolbeltqrcodescanner/ui/buttons/button_bar.dart';

import '../features/scanner/scanner_text.dart';
import '../ui/menu/hamburger_menu.dart';
import '../ui/spacers/spacers_vertical.dart';

class ScanContentPage extends StatelessWidget {
  final Uint8List image;
  final String content;

  const ScanContentPage(
      {super.key, required this.image, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          'S C A N N E R',
          style: GoogleFonts.abel(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      drawer: const HamburgerMenu(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                ScannerImage(image: image),
                const SpacerVertical(height: 25),
                ScannerText(content: content),
                const SpacerVertical(height: 25),
                ButtonBarOptions(content: content),
                const SpacerVertical(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

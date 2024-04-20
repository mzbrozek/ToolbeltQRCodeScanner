import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toolbeltqrcodescanner/ui/buttons/button_bar.dart';

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
                Image(
                  image: MemoryImage(image),
                  fit: BoxFit.fitWidth,
                ),
                const SpacerVertical(height: 15),
                ContentText(content: content),
                const SpacerVertical(height: 15),
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

class ContentText extends StatelessWidget {
  final String content;
  const ContentText({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blue,
      ),
      child: Center(
        heightFactor: 2,
        widthFactor: 1.3,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
            content,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

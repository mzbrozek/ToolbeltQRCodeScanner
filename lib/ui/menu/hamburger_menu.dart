import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hamburger_option.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            child: Text(
              'QR Scanner',
              style: GoogleFonts.abel(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const HamburgerOption(
              icon: Icons.document_scanner,
              text: 'S C A N N E R',
              newRoute: '/home'),
          const HamburgerOption(
              icon: Icons.info, text: 'A B O U T', newRoute: '/about')
        ],
      ),
    );
  }
}

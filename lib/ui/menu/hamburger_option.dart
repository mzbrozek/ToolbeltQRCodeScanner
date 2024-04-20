import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HamburgerOption extends StatelessWidget {
  final IconData? icon;
  final String text;
  final String newRoute;

  const HamburgerOption(
      {super.key,
      required this.icon,
      required this.text,
      required this.newRoute});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: GoogleFonts.abel(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, newRoute, (route) => false);
      },
    );
  }
}

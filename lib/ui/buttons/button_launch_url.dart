import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLaunchURL extends StatelessWidget {
  final String content;
  const ButtonLaunchURL({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        final Uri url = Uri.parse(content);
        launchUrl(url);
      },
      icon: const Icon(
        Icons.open_in_browser,
        size: iconSize,
        color: Colors.white,
      ),
    );
  }
}

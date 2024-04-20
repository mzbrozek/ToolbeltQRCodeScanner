import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toolbeltqrcodescanner/constants/constants.dart';

class ButtonCopyToClipboard extends StatelessWidget {
  final String content;
  const ButtonCopyToClipboard({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Clipboard.setData(ClipboardData(text: content));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.grey,
            content: Center(child: Text('Copied!')),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      icon: const Icon(
        Icons.copy,
        size: iconSize,
        color: Colors.white,
      ),
    );
  }
}

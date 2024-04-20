import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/constants/constants.dart';

class ButtonRefresh extends StatelessWidget {
  const ButtonRefresh({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      },
      icon: const Icon(
        Icons.refresh,
        size: iconSize,
        color: Colors.white,
      ),
    );
  }
}

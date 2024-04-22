import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/constants/constants.dart';

class ScannerImage extends StatelessWidget {
  final Uint8List image;
  const ScannerImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: borderBlurRadius)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image(
          image: MemoryImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

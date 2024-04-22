import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/constants/constants.dart';

class ScannerText extends StatelessWidget {
  final String content;
  const ScannerText({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: borderBlurRadius)
        ],
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

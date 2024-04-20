import 'package:flutter/cupertino.dart';

class SpacerVertical extends StatelessWidget {
  final double height;

  const SpacerVertical({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0,
      height: height,
    );
  }
}

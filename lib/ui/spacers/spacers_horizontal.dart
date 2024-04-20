import 'package:flutter/cupertino.dart';

class SpacerHorizontal extends StatelessWidget {
  final double width;
  const SpacerHorizontal({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 0,
    );
  }
}

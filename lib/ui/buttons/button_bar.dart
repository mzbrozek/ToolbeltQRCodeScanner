import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/constants/constants.dart';

import '../spacers/spacers_horizontal.dart';
import 'button_copy_to_clipboard.dart';
import 'button_launch_url.dart';
import 'button_refresh.dart';

class ButtonBarOptions extends StatelessWidget {
  final String content;
  const ButtonBarOptions({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: borderBlurRadius)
          ],
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonLaunchURL(content: content),
              const SpacerHorizontal(width: 25),
              ButtonCopyToClipboard(content: content),
              const SpacerHorizontal(width: 25),
              const ButtonRefresh()
            ],
          ),
        ),
      ),
    );
  }
}

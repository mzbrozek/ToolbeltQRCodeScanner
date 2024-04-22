import 'package:flutter/material.dart';
import 'package:toolbeltqrcodescanner/ui/spacers/spacers_horizontal.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                'Developed by Michal Z.',
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  SpacerHorizontal(width: 25),
                  Icon(Icons.star)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

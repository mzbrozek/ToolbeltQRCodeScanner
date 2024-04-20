import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:toolbeltqrcodescanner/pages/scan_content_page.dart';

class Scanner extends StatelessWidget {
  final MobileScannerController scannerController;
  const Scanner({super.key, required this.scannerController});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MobileScanner(
      controller: scannerController,
      onDetect: (capture) {
        String content = '';
        final List<Barcode> barcodes = capture.barcodes;
        final Uint8List? image = capture.image;

        for (final barcode in barcodes) {
          content = '${barcode.rawValue}';
        }
        if (image != null) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => ScanContentPage(
                        image: image,
                        content: content,
                      )),
              (route) => false);
        }
      },
    );
  }
}

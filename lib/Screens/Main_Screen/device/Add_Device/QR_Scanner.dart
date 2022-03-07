import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanning extends StatefulWidget {
  const QrScanning({Key? key}) : super(key: key);

  @override
  _QrScanningState createState() => _QrScanningState();
}

class _QrScanningState extends State<QrScanning> {
  final qrKey = GlobalKey(debugLabel: "QR");

  Barcode? barcode;

  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    // TODO: implement reassemble
    super.reassemble();

    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: Container(
        margin: EdgeInsets.all(size.height * 0.01),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Device',
                  style: TextStyle(
                      fontSize: size.height * 0.03,
                      fontWeight: FontWeight.w900),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: size.height * 0.03,
                    width: size.width * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                    ),
                    child: Center(child: Image.asset("assets/add Icon.png")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            Center(
              child: Text(
                "Scan QR ",
                style: TextStyle(
                    fontSize: size.height * 0.02, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
                height:400,
                width: double.infinity,
                child: buildQrView(context)),
            SizedBox(
              height: size.height*0.05,
            ),
            Center(
              child: Container(
                child: Text(
                  "   Place your phone camera on the\n"
                      "QR Code  presented  in the  product",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: size.height*0.013),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(

            borderLength: 180,
            borderWidth: 20,

            cutOutHeight: 600,
            cutOutWidth: 400,

            borderRadius: 20,
            borderColor: Color(0xff374957),
            overlayColor: Color(0xffECF0F3)),
      );

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;

      controller.scannedDataStream.listen((barcode) => this.barcode = barcode);
    });
  }

  Widget buildResult() => Text(
        barcode != null ? "Result : ${barcode!.code}" : 'Scan a Code',
        maxLines: 3,
      );
}

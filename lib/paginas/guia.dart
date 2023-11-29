import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class MAPA extends StatefulWidget {
  const MAPA({Key? key}) : super(key: key);

  @override
  State<MAPA> createState() => _MAPAState();
}

class _MAPAState extends State<MAPA> {
  String qrText = "Aún no se ha escaneado ningún código QR";

  Future<void> _scanQR() async {
    try {
      String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', // color of the toolbar
        'Cancelar', // text for the cancel button
        true, // show flash icon
        ScanMode.QR, // specify the type of scan
      );

      setState(() {
        qrText = barcodeScanRes;
      });

      // Handle the scanned QR code here
      print('Código QR escaneado: $barcodeScanRes');

      // Check if the scanned result is a valid URL
      if (await canLaunch(barcodeScanRes)) {
        await launch(barcodeScanRes); // Launch the URL
      } else {
        print('El código escaneado no es una URL válida.');
      }
    } catch (e) {
      print('Error al escanear código QR: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GUIA TURISTICO"),
      ),
      body: Center(
        child: Text(
          qrText,
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.qr_code_2),
        onPressed: () {
          _scanQR();
        },
      ),
    );
  }
}

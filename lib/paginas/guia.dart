import 'package:flutter/material.dart';

class MAPA extends StatefulWidget {
  const MAPA({super.key});

  @override
  State<MAPA> createState() => _Guia();
}

class _Guia extends State<MAPA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GUIA TURISTICO"),
      ),
      body: const Center(
        child: Text(""),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.qr_code_2),
          onPressed: () {
            _lerQR(context);
          }),
    );
  }
}

void _lerQR(BuildContext context) {}

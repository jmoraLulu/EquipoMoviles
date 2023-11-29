import 'package:aplicacion/paginas/costo.dart';
import 'package:aplicacion/paginas/galeria.dart';
import 'package:aplicacion/paginas/gratis.dart';
import 'package:aplicacion/paginas/guia.dart';
import 'package:aplicacion/paginas/inicio.dart';
import 'package:aplicacion/paginas/notificaciones.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/info': (context) => const Notifica(),
        '/mapa': (context) => const MAPA(),
        '/historial': (context) => const GALERIA(),
        '/cero': (context) => const GRATIS(),
        '/dinero': (context) => const TARGETA(),
      },
    );
  }
}

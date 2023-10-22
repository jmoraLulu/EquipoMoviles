import 'package:flutter/material.dart';
import 'package:tarea/paginas/costo.dart';
import 'package:tarea/paginas/galeria.dart';
import 'package:tarea/paginas/gratis.dart';
import 'package:tarea/paginas/guia.dart';
import 'package:tarea/paginas/inicio.dart';
import 'package:tarea/paginas/notificaciones.dart';

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

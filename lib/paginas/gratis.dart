
import 'package:flutter/material.dart';
import 'package:tarea/paginas/complementos.dart';

class GRATIS extends StatefulWidget {
  const GRATIS({super.key});

  @override
  State<GRATIS> createState() => _Gcero();
}

class _Gcero extends State<GRATIS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SERVICIOS GRATUITO"),
        ),
        body: SafeArea(
            child: ListView(children: const [
          Gratis1(),
          ListTile(
            leading: Icon(Icons.museum),
            title: Text("MUSEO DEL PALACIO DE GOBIERNO"),
            subtitle: Text(
                "La exposición en los antiguos salones del Palacio de Gobierno parte de un guion temático integrado por obras de arte, documentos, fotografías e indumentaria, distribuidas en cuatro salas temáticas. El concepto museístico se enfoca en mostrar a la comunidad la historia de la entidad en tres marcos principales: leyes, gobierno y sociedad, fomentando un sentimiento de orgullo que refuerza la identidad nuevoleonesa.",
                textAlign: TextAlign.justify),
          ),
        ])));
  }
}


import 'package:flutter/material.dart';
import 'package:tarea/paginas/complementos.dart';

class Notifica extends StatefulWidget {
  const Notifica({super.key});

  @override
  State<Notifica> createState() => _NotificaState();
}

class _NotificaState extends State<Notifica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("EVENTOS"),
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Evento1(),
              ListTile(
                leading: Icon(Icons.family_restroom_rounded),
                title: Text(
                    "MACROFEST HORA: 6:00, Dia: 16 septiembre, LUGAR: Explanada de los niños heroes"),
                subtitle: Text(
                    "Para celebrar el Mes de la Patria y dar continuidad a la serie de festejos masivos musicales organizados por el Gobierno del Estado, los neoleoneses tendrán oportunidad de festejar con varias opciones musicales, finalizando con el grito de la independencia.",
                    textAlign: TextAlign.justify),
              ),
              Evento2(),
              ListTile(
                leading: Icon(Icons.family_restroom_rounded),
                title: Text(
                    "Festival Calaveras, Dia: 29 octubre  HORA: 11:00pm, LUGAR: macroplaza"),
                subtitle: Text(
                    "Festival calaveras en MTY, es un macro desfile para celebrar dia de muertos.",
                    textAlign: TextAlign.justify),
              ),
              Evento3(),
              ListTile(
                leading: Icon(Icons.paragliding_outlined),
                title: Text(
                    "Festival animales gigantes, Dia: 23 de septiembre  HORA: 7:30pm, LUGAR: macroplaza"),
                subtitle: Text(
                    "Como parte de la inauguración del Festival Internacional de Santa Lucía, en las calles de la ciudad se llevará a cabo un recorrido de globos gigantes traído desde Francia.",
                    textAlign: TextAlign.justify),
              ),
              Evento4(),
              ListTile(
                leading: Icon(Icons.festival),
                title: Text(
                    "Festival Calaveras, Dia: 31 octubre  HORA: 7:00pm, LUGAR: barrio antiguo"),
                subtitle: Text(
                    "la zona de Barrio Antiguo se convierte en un desfile de horror y fantasía luego de las fiestas de Halloween en Monterrey.",
                    textAlign: TextAlign.justify),
              ),
            ],
          ),
        ));
  }
}

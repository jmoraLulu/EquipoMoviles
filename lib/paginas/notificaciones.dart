import 'package:aplicacion/paginas/complementos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Notifica extends StatefulWidget {
  const Notifica({Key? key}) : super(key: key);

  @override
  State<Notifica> createState() => _NotificaState();
}

class _NotificaState extends State<Notifica> {
  Future<void> llamarEvento(String telefono) async {
    final url = 'tel:$telefono';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo iniciar la llamada a $telefono';
    }
  }

  Widget buildEventoTile(String title, String subtitle, String telefono) {
    return ListTile(
      leading: Icon(Icons.family_restroom_rounded),
      title: Text(title),
      subtitle: Text(subtitle, textAlign: TextAlign.justify),
      onTap: () {
        llamarEvento(telefono);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EVENTOS"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Evento1(),
            buildEventoTile(
              "MACROFEST HORA: 6:00, Dia: 16 septiembre, LUGAR: Explanada de los niños heroes",
              "Para celebrar el Mes de la Patria y dar continuidad a la serie de festejos masivos musicales organizados por el Gobierno del Estado, los neoleoneses tendrán oportunidad de festejar con varias opciones musicales, finalizando con el grito de la independencia.",
              '+123456789', // Reemplaza con el número de teléfono del evento
            ),
            Evento2(),
            buildEventoTile(
              "Festival Calaveras, Dia: 29 octubre  HORA: 11:00pm, LUGAR: macroplaza",
              "Festival calaveras en MTY, es un macro desfile para celebrar dia de muertos.",
              '+123456789', // Reemplaza con el número de teléfono del evento
            ),
            Evento3(),
            buildEventoTile(
              "Festival animales gigantes, Dia: 23 de septiembre  HORA: 7:30pm, LUGAR: macroplaza",
              "Como parte de la inauguración del Festival Internacional de Santa Lucía, en las calles de la ciudad se llevará a cabo un recorrido de globos gigantes traído desde Francia.",
              '+123456789', // Reemplaza con el número de teléfono del evento
            ),
            Evento4(),
            buildEventoTile(
              "Festival Calaveras, Dia: 31 octubre  HORA: 7:00pm, LUGAR: barrio antiguo",
              "la zona de Barrio Antiguo se convierte en un desfile de horror y fantasía luego de las fiestas de Halloween en Monterrey.",
              '+123456789', // Reemplaza con el número de teléfono del evento
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tarea/paginas/complementos.dart';

class TARGETA extends StatefulWidget {
  const TARGETA({super.key});

  @override
  State<TARGETA> createState() => _Cdinero();
}

class _Cdinero extends State<TARGETA> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("COSTOS"),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.maps_home_work_outlined),
            ),
            Tab(
              icon: Icon(Icons.add_card),
            )
          ]),
        ),
        body: const TabBarView(children: [Disponibles(), Ingreso()]),
      ),
    );
  }
}

class Ingreso extends StatelessWidget {
  const Ingreso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        const Text("FORMULARIO PARA RECARGA DE EFECTIVO ELECTRONICO"),
        const SizedBox(height: 20),
        const Text("NÚMERO DE LA TARGETA"),
        _numeroTargeta(),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text("FECHA DE CADUCIDAD"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 5,
              child: _fechaCaducidad(),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text("TITULAR DE LA TARGETA"),
        Row(
          children: [
            const Text("Sr. /Sra."),
            SizedBox(
              width: MediaQuery.of(context).size.width * 4 / 5,
              child: _nombre(),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text("EMISOR DE LA TARJETA"),
        _emisor(),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text("CVV"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1 / 5,
              child: _cvv(),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text("MONTO TOTAL A INGRESAR"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 3 / 5,
              child: _dinero(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("confirmar ingreso"))
            ],
          ),
        )
      ],
    );
  }

  Container _numeroTargeta() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: (TextFormField(
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(border: InputBorder.none),
      )),
    );
  }
}

Container _fechaCaducidad() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: (TextFormField(
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(border: InputBorder.none),
    )),
  );
}

Container _nombre() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: (TextFormField(
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(border: InputBorder.none),
    )),
  );
}

Container _emisor() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: (TextFormField(
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(border: InputBorder.none),
    )),
  );
}

Container _cvv() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: (TextFormField(
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(border: InputBorder.none),
    )),
  );
}

Container _dinero() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey)),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: (TextFormField(
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(border: InputBorder.none),
    )),
  );
}

class Disponibles extends StatelessWidget {
  const Disponibles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(children: [
      const Costo1(),
      ListTile(
        leading: IconButton(
            icon: const Icon(Icons.phone_android),
            onPressed: () {
              //aqui se pone la funcion de hacer llamada telefonica
            }),
        title: const Text("HORNO 3"),
        subtitle: const Text(
            "El Museo del Acero Horno 3 en el Parque Fundidora de Monterrey muestra la historia del acero en la región a través de exhibiciones interactivas, recorridos y exposiciones. Además, ofrece una vista panorámica desde la parte superior del horno. Es una atracción cultural clave en Monterrey. ",
            textAlign: TextAlign.justify),
      ),
      const Costo2(),
      ListTile(
        leading: IconButton(
            icon: const Icon(Icons.phone_android),
            onPressed: () {
              //aqui se pone la funcion de hacer llamada telefonica
            }),
        title: const Text("RESTAURANTE SANTA LUCIA"),
        subtitle: const Text(
            "Restaurante informal en un patio junto a un canal; se sirven filetes, lasaña y una gran variedad de vinos.",
            textAlign: TextAlign.justify),
      ),
      const Costo3(),
      ListTile(
        leading: IconButton(
            icon: const Icon(Icons.phone_android),
            onPressed: () {
              //aqui se pone la funcion de hacer llamada telefonica
            }),
        title: const Text("HOTEL MACROPLAZA"),
        subtitle: const Text(
            "Este hotel de lujo, se encuentra frente a la Macroplaza y sus jardines, Se ofrecen desayuno y estacionamiento. Se incluyen otras comodidades, como un restobar informal, un restaurante argentino con parrilla y una piscina cubierta, además de un gimnasio y una sala de TV.",
            textAlign: TextAlign.justify),
      ),
      const Costo4(),
      ListTile(
        leading: IconButton(
            icon: const Icon(Icons.phone_android),
            onPressed: () {
              //aqui se pone la funcion de hacer llamada telefonica
            }),
        title: const Text("PASEO SANTA LUCIA"),
        subtitle: const Text(
            "Los recorridos en lancha a lo largo del Paseo Santa Lucía en Monterrey son una de las experiencias más populares para los visitantes que desean disfrutar de una perspectiva única de la ciudad y su hermoso entorno acuático",
            textAlign: TextAlign.justify),
      ),
    ]));
  }
}

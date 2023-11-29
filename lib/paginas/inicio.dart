import 'package:aplicacion/paginas/complementos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _launchPhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo iniciar la llamada a $phoneNumber';
    }
  }

  Widget _buildListTile(String title, String subtitle, String phoneNumber) {
    return ListTile(
      leading: const Icon(Icons.phone),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        _launchPhoneCall(phoneNumber);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MENU PRINCIPAL"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, "/info");
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Complemento1(),
            _buildListTile(
              "ZONA CENTRAL",
              "Cuenta con una extensión de 40 hectáreas...",
              '+123456789',
            ),
            Complemento2(),
            _buildListTile(
              "PALACIO DE GOBIERNO",
              "Es un edificio del gobierno estatal...",
              '+123456789',
            ),
            Complemento3(),
            _buildListTile(
              "PASEO SANTA LUCIA",
              "El Paseo Santa Lucía es conocido por su entorno escénico...",
              '+123456789',
            ),
            Complemento4(),
            _buildListTile(
              "TEATRO DE LA CIUDAD",
              "El Teatro de la Ciudad de Monterrey suele albergar...",
              '+123456789',
            ),
            Complemento5(),
            _buildListTile(
              "BIBLIOTECA DEL ESTADO",
              "La Biblioteca Fray Servando Teresa de Mier alberga una amplia colección...",
              '+123456789',
            ),
            Complemento6(),
            _buildListTile(
              "FUENTE DE NEPTUNO",
              "Esta fuente es una parada popular para los visitantes...",
              '+123456789',
            ),
            Complemento7(),
            _buildListTile(
              "PLAZA ZARAGOZA",
              "La plaza es un lugar de encuentro para los habitantes...",
              '+123456789',
            ),
            Complemento8(),
            _buildListTile(
              "PARQUE FUNDIDORA",
              "Este parque es un lugar popular para actividades recreativas...",
              '+123456789',
            ),
            Complemento9(),
            _buildListTile(
              "Corredor verde",
              "La obra, de 496 metros de largo sobre el Río Santa Catarina...",
              '+123456789',
            ),
            Complemento10(),
            _buildListTile(
              "PARQUE ESPAÑA",
              "El Parque España es un hermoso espacio verde ubicado en el centro...",
              '+123456789',
            ),
            Complemento11(),
            _buildListTile(
              "BARRIO ANTIGUO",
              "El Barrio Antiguo alberga una gran cantidad de bares, restaurantes...",
              '+123456789',
            ),
          ],
        ),
      ),
      drawer: _getDrawer(context),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(""),
            accountEmail: const Text(""),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Logo_de_la_Secretar%C3%ADa_de_Turismo_de_Nuevo_Le%C3%B3n_%282021%29.svg/800px-Logo_de_la_Secretar%C3%ADa_de_Turismo_de_Nuevo_Le%C3%B3n_%282021%29.svg.png",
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://live.staticflickr.com/670/20624362582_36d79e99e1_h.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text("Guia turistico"),
            subtitle: const Text("prueba"),
            onTap: () {
              Navigator.pushNamed(context, "/mapa");
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: const Text("Servicios de pago"),
            subtitle: const Text("muceos, restaurantes, lanchas"),
            onTap: () {
              Navigator.pushNamed(context, "/dinero");
            },
          ),
          ListTile(
            leading: const Icon(Icons.money_off),
            title: const Text("Servicios gratuitos"),
            subtitle: const Text("muceos, librerias, teatro"),
            onTap: () {
              Navigator.pushNamed(context, "/cero");
            },
          ),
          ListTile(
            leading: const Icon(Icons.mms_rounded),
            title: const Text("Tus recuerdos"),
            onTap: () {
              Navigator.pushNamed(context, "/historial");
            },
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:tarea/paginas/complementos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              })
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: const [
          //Navigator.pushNamed(context, "/mapa");
          Complemento1(),
          ListTile(
            leading: Icon(Icons.forest),
            title: Text("ZONA CENTRAL"),
            subtitle: Text(
                "Cuenta con una extensión de 40 hectáreas donde podrás admirar antiguos monumentos, edificios coloniales y bellísimas fuentes para un sano esparcimiento, disfrutar de sus extensas áreas verdes al aire libre y conoce con tu familia uno de los iconos más importantes de nuestro estado.",
                textAlign: TextAlign.justify),
          ),
          Complemento2(),
          ListTile(
            leading: Icon(Icons.business_sharp),
            title: Text("PALACIO DE GOBIERNO"),
            subtitle: Text(
                "Es un edificio del gobierno estatal en Monterrey, la ciudad capital del estado de Nuevo León, en el norte de México. El edificio de estilo neoclásico se ubica en el sector más norte de la Macroplaza de la ciudad.",
                textAlign: TextAlign.justify),
          ),
          Complemento3(),
          ListTile(
            leading: Icon(Icons.directions_walk_rounded),
            title: Text("PASEO SANTA LUCIA"),
            subtitle: Text(
                "El Paseo Santa Lucía es conocido por su entorno escénico, con jardines, puentes, esculturas y áreas de descanso a lo largo del canal. Los visitantes pueden disfrutar de un tranquilo paseo en bote o caminar a lo largo de sus orillas, lo que lo convierte en un lugar popular para relajarse y disfrutar del aire libre.",
                textAlign: TextAlign.justify),
          ),
          Complemento4(),
          ListTile(
            leading: Icon(Icons.theater_comedy_rounded),
            title: Text("TEATRO DE LA CIUDAD"),
            subtitle: Text(
                "El Teatro de la Ciudad de Monterrey suele albergar una variedad de eventos culturales de alta calidad y atrae a artistas nacionales e internacionales, así como a una audiencia diversa de amantes de las artes. El teatro está diseñado para acomodar a un gran número de espectadores y ofrece una experiencia teatral y artística significativa en la región.",
                textAlign: TextAlign.justify),
          ),
          Complemento5(),
          ListTile(
            leading: Icon(Icons.menu_book_rounded),
            title: Text("BIBLIOTECA DEL ESTADO"),
            subtitle: Text(
                "La Biblioteca Fray Servando Teresa de Mier alberga una amplia colección de libros y materiales de lectura, así como proporciona espacios para la lectura, investigación y actividades culturales. Además de sus recursos literarios, esta biblioteca a menudo organiza eventos, charlas, exposiciones y actividades educativas para la comunidad.",
                textAlign: TextAlign.justify),
          ),
          Complemento6(),
          ListTile(
            leading: Icon(Icons.fort_rounded),
            title: Text("FUENTE DE NEPTUNO"),
            subtitle: Text(
                "Esta fuente es una parada popular para los visitantes que exploran la Macroplaza y es un lugar pintoresco para tomar fotografías y disfrutar del entorno. Durante eventos especiales o festividades, a menudo se decoran las áreas circundantes de la fuente, lo que la hace aún más impresionante.",
                textAlign: TextAlign.justify),
          ),
          Complemento7(),
          ListTile(
            leading: Icon(Icons.deck_rounded),
            title: Text("PLAZA ZARAGOZA"),
            subtitle: Text(
                "La plaza es un lugar de encuentro para los habitantes de Monterrey y un destino turístico popular. A menudo se realizan eventos culturales y festividades en esta área, lo que la convierte en un lugar animado y vibrante en la ciudad. También es un punto de partida común para explorar el centro histórico de Monterrey y visitar otros lugares de interés cercanos.",
                textAlign: TextAlign.justify),
          ),
          Complemento8(),
          ListTile(
            leading: Icon(Icons.park_rounded),
            title: Text("PARQUE FUNDIDORA"),
            subtitle: Text(
                "Este parque es un lugar popular para actividades recreativas al aire libre, eventos culturales y deportivos. El Parque Fundidora cuenta con una variedad de atracciones y espacios, que incluyen jardines, lagos, áreas verdes, museos, un pabellón de exposiciones, una pista de hielo, un auditorio al aire libre, un teatro al aire libre, y más. También es un lugar popular para realizar actividades deportivas como correr, andar en bicicleta y patinar.",
                textAlign: TextAlign.justify),
          ),
          Complemento9(),
          ListTile(
            leading: Icon(Icons.directions_walk_rounded),
            title: Text("Corredor verde"),
            subtitle: Text(
                "La obra, de 496 metros de largo sobre el Río Santa Catarina, es apta para todas las personas, ya sea a pie, en bicicleta, silla de ruedas o carriola, tiene jardineras con árboles y plantas de la región, y conecta a dos parques emblemáticos de la ciudad, el Fundidora y el España.",
                textAlign: TextAlign.justify),
          ),
          Complemento10(),
          ListTile(
            leading: Icon(Icons.pool_rounded),
            title: Text("PARQUE ESPAÑA"),
            subtitle: Text(
                "El Parque España es un hermoso espacio verde ubicado en el centro de Monterrey, Nuevo León, México. Este parque cuenta con una amplia variedad de áreas verdes, jardines, senderos, albercas y zonas de recreación, lo que lo convierte en un lugar popular para los residentes y visitantes de la ciudad.",
                textAlign: TextAlign.justify),
          ),
          Complemento11(),
          ListTile(
            leading: Icon(Icons.nightlight_round_sharp),
            title: Text("BARRIO ANTIGUO"),
            subtitle: Text(
                "El Barrio Antiguo alberga una gran cantidad de bares, restaurantes, cafeterías, tiendas de antigüedades y galerías de arte. Es un lugar popular para el entretenimiento nocturno, con una escena de música en vivo y una vibrante vida nocturna. Además, el barrio también es hogar de eventos culturales y artísticos, como ferias, conciertos al aire libre y festivales.",
                textAlign: TextAlign.justify),
          ),
        ],
      )),
      drawer: _getDrawer(context),
    );
  }
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
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Logo_de_la_Secretar%C3%ADa_de_Turismo_de_Nuevo_Le%C3%B3n_%282021%29.svg/800px-Logo_de_la_Secretar%C3%ADa_de_Turismo_de_Nuevo_Le%C3%B3n_%282021%29.svg.png"),
          )),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://live.staticflickr.com/670/20624362582_36d79e99e1_h.jpg"),
                  fit: BoxFit.cover)),
        ),
        ListTile(
            leading: const Icon(Icons.map),
            title: const Text("Guia turistico"),
            subtitle: const Text("prueba"),
            onTap: () {
              Navigator.pushNamed(context, "/mapa");
            }),
        ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: const Text("Servicios de pago"),
            subtitle: const Text("muceos, restaurantes, lanchas"),
            onTap: () {
              Navigator.pushNamed(context, "/dinero");
            }),
        ListTile(
            leading: const Icon(Icons.money_off),
            title: const Text("Servicios gratuitos"),
            subtitle: const Text("muceos, librerias, teatro"),
            onTap: () {
              Navigator.pushNamed(context, "/cero");
            }),
        ListTile(
            leading: const Icon(Icons.mms_rounded),
            title: const Text("Tus recuerdos"),
            onTap: () {
              Navigator.pushNamed(context, "/historial");
            })
      ],
    ),
  );
}

// Creado por: Marco Antonio Rosas Gonzalez
// Asignatura: Desarrollo Móvil Integral
// Grado y Grupo: 10°A
// Docente: Ramírez Hernández Marco Antonio
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Estilo de fuente personalizado
  final TextStyle customTextStyle = TextStyle(
    fontFamily: 'si', // Nombre de la fuente definido en pubspec.yaml
    fontSize: 16.0, // Tamaño de fuente deseado
    fontWeight: FontWeight
        .bold, // Puedes ajustar el peso de la fuente según tus preferencias
  );

  @override
  Widget build(BuildContext context) {
    // Crear una página Scaffold que contiene la estructura principal de la aplicación
    return new Scaffold(
      appBar: new AppBar(
        // Barra de navegación superior (AppBar) con un título y un botón de búsqueda
        title: new Text("MovieApp-200749"),titleTextStyle: TextStyle(fontFamily: 'si'), // Título de la aplicación
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.black26,
            ),
            onPressed: () {
              // Acción a ejecutar cuando se presiona el botón de búsqueda
            },
          ),
        ],
      ),
      drawer: new Drawer(
        backgroundColor: Colors.redAccent,
        // Menú lateral (Drawer) que se despliega desde el borde izquierdo
        child: new ListView(children: <Widget>[
          new DrawerHeader(
              child: new Material()), // Encabezado del menú lateral

          // Elemento del menú "peliculas"
          new ListTile(
            title: new Text(
              "Peliculas",
              style:TextStyle(fontFamily: 'si'),
                   // Aplica el estilo de fuente personalizado
            ),
            trailing: new Icon(Icons.local_movies), // Icono de películas
          ),

          // Separador en el menú
          new Divider(
            height: 5.0,
          ),

          // Elemento del menú "Television"
          new ListTile(
            title: new Text(
              "Television",
              style:TextStyle(fontFamily: 'si'),
                   // Aplica el estilo de fuente personalizado
            ),
            trailing: new Icon(Icons.live_tv), // Icono de televisión
          ),

          // Separador en el menú
          new Divider(
            height: 5.0,
          ),

          // Elemento del menú "Cerrar"
          new ListTile(
            title: new Text(
              "Cerrar",
              style:TextStyle(fontFamily: 'si'),
                   // Aplica el estilo de fuente personalizado
            ),
            trailing: new Icon(Icons.exit_to_app), // Icono de televisión
            onTap: () => Navigator.of(context)
                .pop(), // Cierra el menú al tocar este elemento
          ),
        ]),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        // Barra de navegación inferior (BottomNavigationBar) con iconos y etiquetas
        items: _obtenerIconos(),
      ),
    );
  }

  // Método para obtener los elementos de la barra de navegación inferior
  List<BottomNavigationBarItem> _obtenerIconos() {
    return [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up), // Icono de pulgar hacia arriba
        label: ("populares"), // Etiqueta para la opción "populares"
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update), // Icono de actualización
        label: ("Proximamente"), // Etiqueta para la opción "Proximamente"
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star), // Icono de estrella
        label: ("Mejor valorados"), // Etiqueta para la opción "Mejor valorados"
      ),
    ];
  }
}
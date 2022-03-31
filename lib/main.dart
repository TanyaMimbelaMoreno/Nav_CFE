import 'package:flutter/material.dart';
import 'package:mimbela/pagina1.dart';
import 'package:mimbela/pagina2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas Nombradas',
      initialRoute: '/',
      //por defecto donde se encuentra el proyecto,
      routes: {
        // '/' por defecto es la primera página
        '/': (context) => const Pagina1(),
        // When navigating to the "/segunda" route, build the Pagina2 widget.
        '/segunda': (context) => const Pagina2(),
      }, //rutas entre páginas
    ), //MaterialApp
  ); //runApp
} //main

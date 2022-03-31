import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.green.shade900,

        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ), //IconButton
        ], //actions
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black,
            primary: Colors.green.shade900,
            onSurface: Colors.grey,
            side: BorderSide(color: Colors.black, width: 2),
            elevation: 20,
            minimumSize: Size(200, 50),
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          // Within the Pagina2 widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },

          child: const Text('Cerrar sesión'),
        ),
      ),
    );
  }
}

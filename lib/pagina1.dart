import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CFE"),
        backgroundColor: Colors.green.shade900,
        automaticallyImplyLeading: true,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ), //IconButton
        ], //actions
      ),
      drawer: const Drawer(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            keyboardType: TextInputType.text,
            maxLength: 100,
            autofocus: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              suffixIcon: const Icon(
                Icons.clear_outlined,
                color: Colors.black,
              ),
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              )),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.green.shade900,
                width: 1,
              )),
              labelText: "Usuario",
            ),
          ), //Fin TextField 1
          TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            maxLength: 100,
            autofocus: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.code,
                color: Colors.black,
              ),
              suffixIcon: const Icon(
                Icons.clear_outlined,
                color: Colors.black,
              ),
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              )),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.green.shade900,
                width: 1,
              )),
              labelText: "Contraseña",
            ),
          ), //Fin TextField 2
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.black,
              primary: Colors.green.shade900,
              onSurface: Colors.grey,
              side: BorderSide(color: Colors.black, width: 2),
              elevation: 20,
              minimumSize: Size(100, 50),
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            // Within the `Pagina1` widget
            onPressed: () {
              // Navigate to the segunda screen using a named route.
              Navigator.pushNamed(context, '/segunda');
            }, //onPressed

            child: const Text('Ingresar'),
          ),
        ],
      ),
      //Children
    );
  } //Widget build
} //class Pagina1

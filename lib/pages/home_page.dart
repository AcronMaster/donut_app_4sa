import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //icono de la izquierda
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.person,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // 1:texto principal(Text)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Text(
                  "I want to ",
                  style: TextStyle(
                    // Tamaño de letra
                    fontSize: 32,
                  ),
                ),
                Text(
                  "Eat",
                  style: TextStyle(
                    // Tamño de letra
                    fontSize: 32,
                    // Negritas
                    fontWeight: FontWeight.bold,
                    //Subrrayado
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          )

          // 2: Pestañas(TabBar)
          // 3: Contenido de pestañas(TabBarView)
          // 4: Carrito(Catr)
        ],
      ),
    );
  }
}

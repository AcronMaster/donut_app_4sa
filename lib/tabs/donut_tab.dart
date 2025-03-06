import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount: 2,
      ),
      //Cuantos elementos
      itemCount: 2,
      padding: const EdgeInsets.all(12),
      //Que elemento se construirá
      itemBuilder: (contex, index) {
        return;
      },
    );
  }
}

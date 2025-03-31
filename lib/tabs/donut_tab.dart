import 'package:donut_app_4sa/utils/donu_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Dunki Donots",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    ["Grape Ape", "Crape", "84", Colors.purple, "lib/images/grape_donut.png"],
    [
      "Choco",
      "Wili Wonka",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //numero de columnas
          crossAxisCount: 2,
          //proporcion entre ancho y largo
          childAspectRatio: 1 / 1.9),
      //Cuantos elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      //Que elemento se construirá
      itemBuilder: (contex, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}

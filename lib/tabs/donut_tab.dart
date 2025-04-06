import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/donu_tile.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAddItem;

  DonutTab({super.key, required this.onAddItem});

  final List donutsOnSale = [
    [
      "Azucar",
      "Krispy Kreme",
      "38",
      Colors.yellow,
      "lib/images/dona_azucar.png"
    ],
    [
      "Chocolate",
      "Krispy Kreme",
      "46",
      Colors.brown,
      "lib/images/dona_chocolate.png"
    ],
    ["Grape", "Krispy Kreme", "52", Colors.purple, "lib/images/dona_grape.png"],
    [
      "Helado",
      "Krispy Kreme",
      "61",
      Colors.grey,
      "lib/images/dona_icecream.png"
    ],
    ["Piña", "Krispy Kreme", "38", Colors.orange, "lib/images/dona_piña.png"],
    [
      "Simple",
      "Krispy Kreme",
      "32",
      Colors.orange,
      "lib/images/dona_simple.png"
    ],
    [
      "Fresa",
      "Krispy Kreme",
      "38",
      Colors.pink,
      "lib/images/dona_strawberry.png"
    ],
    [
      "Vainilla",
      "Krispy Kreme",
      "38",
      Colors.grey,
      "lib/images/dona_vainilla.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.8,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAdd: onAddItem,
        );
      },
    );
  }
}

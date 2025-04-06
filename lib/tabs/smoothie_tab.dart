import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/shoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAddItem;

  SmoothieTab({super.key, required this.onAddItem});

  final List smoothiesOnSale = [
    [
      "Bnana",
      "Shoothie King",
      "40",
      Colors.yellow,
      "lib/images/shoothie_banana.png"
    ],
    [
      "Chocolate",
      "Shoothie King",
      "43",
      Colors.brown,
      "lib/images/shoothie_chocolate.png"
    ],
    [
      "Fresa",
      "Shoothie King",
      "40",
      Colors.pink,
      "lib/images/shoothie_fresa.png"
    ],
    [
      "Mango",
      "Shoothie King",
      "46",
      Colors.orange,
      "lib/images/shoothie_mango.png"
    ],
    [
      "Matcha",
      "Shoothie King",
      "54",
      Colors.green,
      "lib/images/shoothie_matcha.png"
    ],
    [
      "Piña",
      "Shoothie King",
      "45",
      Colors.amber,
      "lib/images/shoothie_piña.png"
    ],
    [
      "Vainilla",
      "Shoothie King",
      "40",
      Colors.grey,
      "lib/images/shoothie_vainilla.png"
    ],
    [
      "Mora",
      "Shoothie King",
      "50",
      Colors.deepPurple,
      "lib/images/shothie_mora.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2.3,
      ),
      itemBuilder: (context, index) {
        return ShoothieTile(
          shoothieFlavor: smoothiesOnSale[index][0],
          shoothieStore: smoothiesOnSale[index][1],
          shoothiePrice: smoothiesOnSale[index][2],
          shoothieColor: smoothiesOnSale[index][3],
          imageName: smoothiesOnSale[index][4],
          onAdd: onAddItem,
        );
      },
    );
  }
}

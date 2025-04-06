import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/pancakes_tile.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAddItem;

  PancakesTab({super.key, required this.onAddItem});

  final List pancakesOnSale = [
    ["Bnana", "Cookpad", "45", Colors.orange, "lib/images/pancake_banana.png"],
    [
      "Chocolate",
      "Maria 33",
      "52",
      Colors.brown,
      "lib/images/pancake_chocolate.png"
    ],
    ["Corazon", "Maria 33", "50", Colors.red, "lib/images/pancake_corazon.png"],
    ["Fresa", "Cookpad", "47", Colors.pink, "lib/images/pancake_fresa.png"],
    [
      "Frutas",
      "Maria 33",
      "45",
      Colors.purple,
      "lib/images/pancake_frutas.png"
    ],
    [
      "Helado",
      "Maria 33",
      "64",
      Colors.purpleAccent,
      "lib/images/pancake_helado.png"
    ],
    [
      "Mantequilla",
      "Cookpad",
      "42",
      Colors.grey,
      "lib/images/pancake_mantequilla.png"
    ],
    [
      "Simple",
      "Maria 33",
      "39",
      Colors.yellow,
      "lib/images/pancake_simple.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (context, index) {
        return PancakesTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakeStore: pancakesOnSale[index][1],
          pancakePrice: pancakesOnSale[index][2],
          pancakeColor: pancakesOnSale[index][3],
          imageName: pancakesOnSale[index][4],
          onAdd: onAddItem,
        );
      },
    );
  }
}

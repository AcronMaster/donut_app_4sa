import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAddItem;

  BurgerTab({super.key, required this.onAddItem});

  final List burgersOnSale = [
    [
      "Bacon",
      "Burger King",
      "39",
      Colors.red,
      "lib/images/hamburguesa_bacon.png"
    ],
    [
      "BBRQ",
      "Burger King",
      "50",
      Colors.orange,
      "lib/images/hamburguesa_bbrq.png"
    ],
    [
      "Doble queso",
      "Macdonals",
      "45",
      Colors.yellow,
      "lib/images/hamburguesa_doblequeso.png"
    ],
    [
      "Huevo",
      "Burger King",
      "47",
      Colors.orangeAccent,
      "lib/images/hamburguesa_huevo.png"
    ],
    [
      "Jumbo",
      "Burger King",
      "60",
      Colors.red,
      "lib/images/hamburguesa_jumbo.png"
    ],
    [
      "Pollo",
      "Macdonals",
      "50",
      Colors.yellow,
      "lib/images/hamburguesa_pollo.png"
    ],
    [
      "Queso",
      "Macdnolas",
      "30",
      Colors.yellow,
      "lib/images/hamburguesa_queso.png"
    ],
    [
      "riple carne",
      "Burger King",
      "69",
      Colors.orange,
      "lib/images/hamburguesa_triple.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.9,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerStore: burgersOnSale[index][1],
          burgerPrice: burgersOnSale[index][2],
          buregerColor: burgersOnSale[index][3],
          imageName: burgersOnSale[index][4],
          onAdd: onAddItem,
        );
      },
    );
  }
}

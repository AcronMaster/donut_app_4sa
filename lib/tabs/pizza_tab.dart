import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAddItem;

  PizzaTab({super.key, required this.onAddItem});

  final List pizzasOnSale = [
    [
      "Champiñon",
      "Pizza Hot",
      "36",
      Colors.red,
      "lib/images/pizza_champiñon.png"
    ],
    [
      "Hawaiana",
      "Pizza Dominos",
      "42",
      Colors.blue,
      "lib/images/pizza_hawaina.png"
    ],
    [
      "Italiana",
      "Pizza Dominos",
      "30",
      Colors.blue,
      "lib/images/pizza_italiana.png"
    ],
    [
      "Peperoni",
      "Pizza Hut",
      "32",
      Colors.red,
      "lib/images/pizza_peperoni.png"
    ],
    [
      "Queso",
      "Little caesars",
      "28",
      Colors.orange,
      "lib/images/pizza_queso.png"
    ],
    [
      "Salami",
      "Little caesars",
      "35",
      Colors.orange,
      "lib/images/pizza_salami.png"
    ],
    [
      "Vegetariana",
      "Pizza Dominos",
      "50",
      Colors.blue,
      "lib/images/pizza_vegetariana.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.8,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFLavor: pizzasOnSale[index][0],
          pizzaStore: pizzasOnSale[index][1],
          pizzaPrice: pizzasOnSale[index][2],
          pizzaColor: pizzasOnSale[index][3],
          imageName: pizzasOnSale[index][4],
          onAdd: onAddItem,
        );
      },
    );
  }
}

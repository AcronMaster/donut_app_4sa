import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFLavor;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imageName;
  final String pizzaStore;
  final void Function(double price) onAdd;

  const PizzaTile({
    super.key,
    required this.imageName,
    required this.pizzaColor,
    required this.pizzaPrice,
    required this.pizzaFLavor,
    required this.pizzaStore,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$pizzaPrice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: pizzaColor[800],
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            Text(
              pizzaFLavor,
              style: TextStyle(
                fontSize: 24,
                color: pizzaColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              pizzaStore,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    color: pizzaColor,
                  ),
                  TextButton(
                    onPressed: () {
                      onAdd(double.parse(pizzaPrice));
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 16,
                        color: pizzaColor,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

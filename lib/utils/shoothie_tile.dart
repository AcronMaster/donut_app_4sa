import 'package:flutter/material.dart';

class ShoothieTile extends StatelessWidget {
  final String shoothieFlavor;
  final String shoothiePrice;
  final dynamic shoothieColor;
  final String imageName;
  final String shoothieStore;
  final void Function(double price) onAdd;

  const ShoothieTile({
    super.key,
    required this.imageName,
    required this.shoothieColor,
    required this.shoothiePrice,
    required this.shoothieFlavor,
    required this.shoothieStore,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: shoothieColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: shoothieColor[100],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$shoothiePrice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: shoothieColor[800],
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            Text(
              shoothieFlavor,
              style: TextStyle(
                fontSize: 24,
                color: shoothieColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              shoothieStore,
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
                    color: shoothieColor[800],
                  ),
                  TextButton(
                    onPressed: () {
                      onAdd(double.parse(shoothiePrice));
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 16,
                        color: shoothieColor,
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

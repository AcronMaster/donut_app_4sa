import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int _cartItemCount = 0;
  double _totalPrice = 0.0;

  void _handleAddToCart(double price) {
    setState(() {
      _cartItemCount++;
      _totalPrice += price;
    });
  }

  final List<Widget> myTabs = const [
    MyTab(iconPath: "lib/icons/donut.png", text: "Donuts"),
    MyTab(iconPath: "lib/icons/burger.png", text: "Burger"),
    MyTab(iconPath: "lib/icons/smoothie.png", text: "Shoothie"),
    MyTab(iconPath: "lib/icons/pancakes.png", text: "Pancakes"),
    MyTab(iconPath: "lib/icons/pizza.png", text: "Pizza"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32)),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(onAddItem: _handleAddToCart),
                  BurgerTab(onAddItem: _handleAddToCart),
                  SmoothieTab(onAddItem: _handleAddToCart),
                  PancakesTab(onAddItem: _handleAddToCart),
                  PizzaTab(onAddItem: _handleAddToCart),
                ],
              ),
            ),
            ShoppingCart(
              itemCount: _cartItemCount,
              totalPrice: _totalPrice,
            ),
          ],
        ),
      ),
    );
  }
}

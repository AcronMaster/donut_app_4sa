import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //Rura del archivo
  final String iconPath;
  final String text;

  const MyTab({super.key, required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
        height: 80,
        // ignore: sort_child_properties_last
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            //Border redondeado
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                //Ruta del archivo
                iconPath,
                color: Colors.grey[600],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 8,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}

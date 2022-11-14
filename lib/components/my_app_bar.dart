import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Catalog"),
      centerTitle: true,
      actions: [
        Icon(Icons.shopping_cart),
        SizedBox(width: 20),
      ],
    );
  }
}

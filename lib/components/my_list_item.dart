import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}

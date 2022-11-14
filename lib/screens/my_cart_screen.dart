import 'package:flutter/material.dart';
import 'package:state_management/components/my_list_item.dart';
import 'package:state_management/size.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          SizedBox(height: large_gap),
          Row(
            children: [
              MyListItem(),
              buildTextButton(),
            ],
          ),
          SizedBox(height: medium_gap),
          Flexible(
            child: TextButton(
              child: Text(
                "Buy",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff3860c4),
      leading: Icon(Icons.arrow_back_ios),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Cart",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Flexible buildTextButton() {
    return Flexible(
      child: TextButton(
        child: Text(
          "Add",
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 30,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {},
      ),
    );
  }
}

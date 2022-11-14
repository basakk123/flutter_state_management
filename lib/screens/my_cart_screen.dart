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
          MyListItem(),
          SizedBox(height: medium_gap),
          TextButton(
            style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(
                Size.fromWidth(10),
              ),
            ),
            onPressed: () {},
            child: Text("Buy"),
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
}

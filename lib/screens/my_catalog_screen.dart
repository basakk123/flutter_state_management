import 'package:flutter/material.dart';
import 'package:state_management/components/my_app_bar.dart';
import 'package:state_management/size.dart';
import 'package:state_management/theme.dart';

import '../components/my_list_item.dart';

class MyCatalogScreen extends StatelessWidget {
  const MyCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 200,
        height: double.infinity,
        color: Colors.blue,
      ),
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          SizedBox(height: xlarge_gap),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                MyListItem(),
                buildTextButton(),
              ],
            ),
          ),
          SizedBox(height: medium_gap),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                MyListItem(),
                buildTextButton(),
              ],
            ),
          ),
          SizedBox(height: medium_gap),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                MyListItem(),
                buildTextButton(),
              ],
            ),
          ),
          SizedBox(height: medium_gap),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                MyListItem(),
                buildTextButton(),
              ],
            ),
          ),
          SizedBox(height: medium_gap),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: [
                MyListItem(),
                buildTextButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff3860c4),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Catalog",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          color: Colors.white,
          icon: Icon(
            Icons.shopping_cart,
            size: 35,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/cart");
          },
        ),
        SizedBox(width: 10),
      ],
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

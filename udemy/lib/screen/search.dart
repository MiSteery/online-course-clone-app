import 'package:flutter/material.dart';
import 'package:udemy/color.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: getAppBar(),
        body: Center(
          child: Text('Search Page'),
        ));
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: white,
      elevation: 0,
      title: Text(
        'Search',
        style: TextStyle(
          color: black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: black,
          ),
        )
      ],
    );
  }
}

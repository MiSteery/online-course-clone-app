import 'package:flutter/material.dart';
import 'package:udemy/color.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: white,
      elevation: 0,
      title: Text(
        'Profile',
        style: TextStyle(color: black),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: black),
        )
      ],
    );
  }

  Widget getBody(){
    return SingleChildScrollView(child: Column(),);
  }
}

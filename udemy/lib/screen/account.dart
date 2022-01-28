import 'package:flutter/material.dart';
import 'package:udemy/color.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: Text('account'),
    );
  }

  AppBar getAppBar(){
    return AppBar(
      centerTitle: true,
        backgroundColor: white,
        elevation: 0,
        title:Text('Profile', style: TextStyle(color: black),
       )
      );
  }
}

import 'package:flutter/material.dart';
import 'package:udemy/color.dart';

class Root extends StatefulWidget {

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
    );
  }

  AppBar getAppBar(){
    return AppBar(
      
    );
  }
}
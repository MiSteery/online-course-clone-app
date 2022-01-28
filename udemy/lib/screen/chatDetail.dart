import 'package:flutter/material.dart';
import 'package:udemy/color.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: Text('chat detail'),
    );
  }

  AppBar getAppBar(){
    return AppBar();
  }
}
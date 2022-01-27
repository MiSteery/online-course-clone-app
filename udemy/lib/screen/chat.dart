import 'package:flutter/material.dart';

import '../color.dart';

class Chat extends StatelessWidget {
  const Chat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: Text('chat'),
    );
  }

   AppBar getAppBar() {
    return AppBar(
      backgroundColor: white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'chat',
        style: TextStyle(
          color: black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: black,
          ),
        ),
          IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: black,
          ),
        )
      ],
    );
  }
}
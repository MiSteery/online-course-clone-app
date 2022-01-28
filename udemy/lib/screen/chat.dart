import 'package:flutter/material.dart';
import 'package:udemy/model/chat.dart';

import '../color.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: getBody(size),
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

  Widget getBody(size) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: 45,
            width: size.width - 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: grey),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: TextField(
                cursorColor: black.withOpacity(0.5),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: black.withOpacity(0.5),
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: black.withOpacity(0.5)),
                  suffixIcon: Icon(Icons.mic, color: black.withOpacity(0.5)),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 55,
                  width: (size.width - 30) * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(chats[0]['imageUrl']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: -4,
                  right: -4,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: white),
                        color: Colors.green),
                  ),
                )
              ]),
              Spacer(),
              Container(
                height: 55,
                width: (size.width - 30) * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      chats[0]['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      chats[0]['message'],
                      style: TextStyle(fontSize: 12, color: grey),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height:55,
                width: (size.width - 30) * 0.1,
                child:Column(
                  children: [
                    Text(
                      chats[0]['time'],
                      style: TextStyle(fontSize: 12, color: grey),
                    ),
                  ],
                ) ,
              )
            ],
          ),
        )
      ],
    );
  }
}

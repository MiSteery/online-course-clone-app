import 'package:flutter/material.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/chat.dart';

class ChatDetail extends StatefulWidget {
  const ChatDetail({Key? key}) : super(key: key);

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: Text('chat detail'),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Row(children: [
                IconButton(
                  splashRadius: 25,
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(chats[0]['imageUrl']),
                          fit: BoxFit.cover,
                          )),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}

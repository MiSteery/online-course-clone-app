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
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
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
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(chats[0]['imageUrl']),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Positioned(
                        top: -4,
                        right: -4,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              border: Border.all(width: 1.5, color: white)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chats[0]['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'online',
                        style: TextStyle(
                          fontSize: 11,
                          color: grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: grey,
                      ),
                      ),
                      IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.phone_in_talk,
                        color: grey,
                      ),
                      ),
                      IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: grey,
                      ),
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

Widget getBody(size){
  return Column(
children:[
  Spacer(),
  Container(
 
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: white,
      boxShadow: [
        BoxShadow(
          color: hightLightGrey.withOpacity(0.08),
          blurRadius: 32,
          offset: Offset(0, 4),
        )
      ]
    ),
    child: SafeArea(
      child: Row(
        children: [
          Container(
            height: 50,
            width: (size.width -30)*0.82,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: grey),
              color: white,
            ),
            child: Row(
              children: [
                Container(
                  width: (size.width -40)*0.1,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: grey.withOpacity(0.1),
                  ),
                  child: Icon(Icons.add, color: primary,),
                ),
                Spacer(),
                Container(
                  width: (size.width -40) * 0.56,
                  child: TextField(
                    cursorColor: black.withOpacity(0.5),
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText: 'Message...',
                      hintStyle: TextStyle(color: black.withOpacity(0.5),)
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  )
]
  );
}
}

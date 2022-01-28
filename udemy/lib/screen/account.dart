import 'package:flutter/material.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/constant.dart';

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
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: black),
        )
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Column(children: [
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(profileUrl), fit: BoxFit.cover)),
                ),
                Positioned(
                    bottom: -4,
                    right: -4,
                    child: Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primary,
                      ),
                      child: Icon(Icons.edit_outlined, color: white, size: 16),
                    ))
              ]),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            username,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            position,
            style: TextStyle(
              fontSize: 12,
              color: grey,
            ),
          )
        ],
      ),
    );
  }
}

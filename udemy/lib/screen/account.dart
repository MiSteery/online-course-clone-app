import 'package:flutter/material.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/account.dart';
import 'package:udemy/model/constant.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

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

  Widget getBody(size) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(profileUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                        child:
                            Icon(Icons.edit_outlined, color: white, size: 16),
                      ),
                    ),
                  ],
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
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Wrap(
              spacing: 15,
              children: [
                Container(
                  height: 60,
                  width: (size.width - 61) / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primary,
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        )
                      ]),
                  child: Column(
                    children: [
                      Icon(
                        userAchieves[0]['icon'],
                        color: white,
                        size: 25,
                      ),
                      Text(
                        userAchieves[0]['title'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

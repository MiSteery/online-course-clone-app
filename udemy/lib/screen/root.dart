import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/constant.dart';

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
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: white,
      elevation: 0,
      flexibleSpace: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              splashRadius: 25,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/menu.svg',
                height: 24,
              ),
            ),
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(profileUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: -4,
                  right: -4,
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primary,
                      border: Border.all(width: 1.5, color: white),
                    ),
                  ))
            ])
          ],
        ),
      )),
    );
  }

Widget getBottomNavigationBar(){
  return Container(

  );
}
}

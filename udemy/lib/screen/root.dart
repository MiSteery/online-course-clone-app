import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                ))
          ],
        ),
      )),
    );
  }
}

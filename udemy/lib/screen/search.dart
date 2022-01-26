import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:udemy/color.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
      title: Text(
        'Search',
        style: TextStyle(
          color: black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: black,
          ),
        )
      ],
    );
  }

  Widget getBody(size) {
    return ListView(padding: EdgeInsets.symmetric(horizontal: 15), children: [
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Container(
            height: 45,
            width: (size.width - 30) * 0.85,
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
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 45,
            width: (size.width - 30) * 0.11,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: primary),
            child: SvgPicture.asset(
              "assets/images/filter.svg",
              height: 24,
              color: white,
            ),
          ),
        ],
      ),
    ]);
  }
}

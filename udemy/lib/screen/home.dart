import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/constant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: grey,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                username,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
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
                            hintText: 'Search your course....',
                            hintStyle: TextStyle(
                              color: black.withOpacity(0.5),
                            ),
                            ),
                      ),
                    ),
                  ),               
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/constant.dart';
import 'package:udemy/model/home.dart';

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
                height: 30,
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
                  Spacer(),
                  Container(
                    height: 45,
                    width: (size.width - 30) * 0.11,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primary,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/filter.svg',
                      height: 24,
                      color: white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    onPageChanged: (index, reason) {}),
                items: List.generate(
                  banners.length,
                  (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(banners[index]),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

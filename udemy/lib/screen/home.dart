import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy/color.dart';
import 'package:udemy/model/constant.dart';
import 'package:udemy/model/home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeCarouseIndex = 0;
  int selectedCategoryIndex = 0;

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
              Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        aspectRatio: 16 / 9,
                        viewportFraction: 1.0,
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeCarouseIndex = index;
                          });
                        }),
                    items: List.generate(
                      banners.length,
                      (index) {
                        return Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(banners[index]),
                            fit: BoxFit.cover,
                          ),
                        ));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(banners.length, (index) {
                        return activeCarouseIndex == index
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                ),
                                child: Container(
                                  height: 10,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: primary),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                ),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: lightGrey),
                                ),
                              );
                      }))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choice your course',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? 15 : 10,
                    right: index == (categories.length) - 1 ? 15 : 0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: selectedCategoryIndex == index
                          ? primary
                          : Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 5,
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: selectedCategoryIndex == index ? white : black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Wrap(
            spacing: 15,
            runSpacing: 15,
            children: List.generate(categoryAll.length, (index) {
              return Stack(children: [
                Container(
                  height: 120,
                  width: (size.width - 45) / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(categoryAll[index]['imageUrl']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: black.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 8,
                    left: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categoryAll[index]['name'],
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${categoryAll[index]['lesson']}lesson",
                          style: TextStyle(
                              color: white.withOpacity(0.9),
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )
                      ],
                    ))
              ]);
            }),
          ),
        )
      ],
    );
  }
}

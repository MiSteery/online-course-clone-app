import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:udemy/color.dart';
import 'package:udemy/model/onBording.dart';

class OnBordoing extends StatefulWidget {
  @override
  _OnBordoingState createState() => _OnBordoingState();
}

class _OnBordoingState extends State<OnBordoing> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      onDone: () {},
      key: _introKey,
      globalBackgroundColor: white,
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Skip',
        style: TextStyle(color: primary),
      ),
      next: Icon(
        Icons.arrow_forward,
        color: primary,
      ),
      done: Text(
        'Done',
        style: TextStyle(color: primary),
      ),
      pages: List.generate(onBoardings.length, (index) {
        return PageViewModel(
          title: onBoardings[index]['title'],
          body: onBoardings[index]['description'],
          image: Image.asset(onBoardings[index]['imageUrl']),
          decoration: PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(
              fontSize: 16,
              color: grey,
            ),
            descriptionPadding: EdgeInsets.all(40),
          ),
        );
      }),
    );
  }
}

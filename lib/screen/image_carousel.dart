import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ImageCarouselState();

}

class _ImageCarouselState extends State<ImageCarousel> {

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        int? nextPage = pageController.page?.toInt();

        if (nextPage == null) {
          return ;
        }

        if (nextPage == 4) {
          nextPage = 0;
        } else {
          nextPage++;
        }

        pageController.animateToPage(
            nextPage,
            duration: Duration(microseconds: 500),
            curve: Curves.ease,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1, 2, 3, 4, 5]
            .map((number) => Image.asset(
          'assets/img/image_$number.jpg',
          fit: BoxFit.cover,
        ),
        ).toList(),
      ),
    );
  }
}
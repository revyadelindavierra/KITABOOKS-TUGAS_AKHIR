import 'package:flutter/material.dart';
import 'package:kitabooks/bahan/Button.dart';
import 'package:kitabooks/intro/introSlide/IntroSlide1.dart';
import 'package:kitabooks/intro/introSlide/IntroSlide2.dart';
import 'package:kitabooks/intro/introSlide/IntroSlide3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: onPageChanged,
            children: [
              IntroSlide1(
                controller: controller,
              ),
              Introslide2(controller: controller),
              IntroSlide3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.60),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 21,
                dotHeight: 5,
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(
              child: BUttonnn(
                currentPage: currentPage,
                controller: controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

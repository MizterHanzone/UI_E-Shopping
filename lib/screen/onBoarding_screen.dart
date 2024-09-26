import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:we_clothes/screen/home_screen.dart';
import 'package:we_clothes/screen/navigation_screen.dart';
import 'package:we_clothes/screen/welcome_screen.dart';

class OnboardingScrenn extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          image: Image.asset("images/splash1.png", width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          image: Image.asset("images/splash2.png", width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          image: Image.asset("images/splash3.png", width: 200),
          decoration: pageDecoration,
          footer: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => NavigationScreen(),
                  ),
                  );
                },
                child: Text(
                  "Let's shopping",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              style: ElevatedButton.styleFrom(
                  maximumSize: const Size.fromHeight(55),
                backgroundColor: const Color(0xFFFEF6969),
              ),
            ),
          )
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,

      back: const Text(
        "Back",
        style: TextStyle(
          fontWeight: FontWeight.w600,
              color: Color(0xFFEF6969)
        ),
      ),
      next: const Text(
        "Next",
        style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFFEF6969)
        ),
      ),
      onDone: (){},
      onSkip: (){},
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xFFEF6969),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        )
      ),
    );
  }
}

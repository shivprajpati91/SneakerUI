import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sneakersshop/animation/fadeanimation.dart';
import 'package:sneakersshop/view/home/home_screen.dart';
import 'package:sneakersshop/view/navigator.dart';

import '../LoginScreen/Login.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                // First Page
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      color: Colors.black,
                    ),
                    Positioned(
                      left: MediaQuery.sizeOf(context).width * 0.04,
                      top: MediaQuery.sizeOf(context).height * 0.26,
                      child: FadeAnimation(
                        delay: 9,
                        translateX: 50,
                        child: Text(
                          "FOLLOW LATEST\n      STYLE SHOES",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(bottom: 30,
                        left: 60,
                        child: FadeAnimation(
                          delay: 9,
                          child: Text("There Are Many Beautiful And Attractive\n               Plants To Your Room",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Positioned(
                      top: MediaQuery.sizeOf(context).height * 0.3,
                      child: FadeAnimation(
                        delay: 1,
                        translateX: 50.0,
                        translateY: 100.0,
                        child:  Container(
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        width: MediaQuery.sizeOf(context).width,
                        child: Image.asset('assets/splash/on1.png'),
                      ),)
                    ),

                  ],
                ),
                // Second Page
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      color: Colors.black,
                    ),
                    Positioned(
                      left: MediaQuery.sizeOf(context).width * 0.04,
                      top: MediaQuery.sizeOf(context).height * 0.26,
                      child: FadeAnimation(
                        delay: 9,
                        translateX: 50,
                        child: Text(
                          "LET'S START JOURNEY\nWITH\nNIKE'CLUB",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(bottom: 30,
                        left: 60,
                        child: FadeAnimation(
                          delay: 9,
                          child: Text("Smart Gourgeous & Feshionable Collection\n                     "
                              "      Explor Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Positioned(bottom: 0,
                        child: FadeAnimation(
                          delay: 1,
                          translateX: 50.0,
                          translateY: 100.0,
                          child:  Container(
                            height: MediaQuery.sizeOf(context).height * 0.7,
                            width: MediaQuery.sizeOf(context).width,
                            child: Image.asset('assets/splash/onnn2.png'),
                          ),)
                    ),

                  ],
                ),],
            ),),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 2,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
              ),
            ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                width: MediaQuery.sizeOf(context).width,
                color: Colors.white,
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                }, child: Text("Next",style:
                TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold,),),
                  style: TextButton.styleFrom(elevation: 20,overlayColor: Colors.cyan,),)),
          ),
        ],
      ),);
  }
}

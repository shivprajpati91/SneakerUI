import 'package:flutter/material.dart';
import 'package:sneakersshop/view/OnBoarding/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _navigateToHome();
    _startBlinkingAnimation();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnBoardingScreen()),
    );
  }

  _startBlinkingAnimation() {
    // Blinking effect
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = !_isVisible;
      });
      _startBlinkingAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Main Title
            Text(
              'NIKE SHOES CLUB',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 2.0,
                shadows: [
                  Shadow(
                    offset: Offset(2, 2),
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Blinking Text Animation
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Text(
                'Step into Comfort & Style',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

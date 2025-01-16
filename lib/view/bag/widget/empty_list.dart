
import 'package:flutter/material.dart';


import '../../../animation/fadeanimation.dart';
import '../../../theme/custom_app_theme.dart';

class EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height / 1.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              delay: 500,
              translateX: 50.0, // Translate 50 units on the X-axis
              translateY: 50.0,
              child: Text("No shoes added!", style: AppThemes.bagEmptyListTitle),
            ),
            FadeAnimation(
              delay: 500,
              translateX: 50.0, // Translate 50 units on the X-axis
              translateY: 50.0,
              child: Text(
                "Once you have added, come back:)",
                style: AppThemes.bagEmptyListSubTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sneakersshop/view/bag/widget/body.dart';
import '../../utils/constants.dart';

class MyBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        body: const BodyBagView(),
      ),
    );
  }
}

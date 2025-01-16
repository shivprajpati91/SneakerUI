

import 'package:flutter/material.dart';

import 'package:sneakersshop/view/profile/widget/appbar.dart';
import 'package:sneakersshop/view/profile/widget/body.dart';

import '../../utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: customAppBarProfile(),
        body: BodyProfile(),
      ),
      
    );
  }
}
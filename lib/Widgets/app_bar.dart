import 'package:abdulrehman/Constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:get/get.dart';

import 'navbar_items.dart';
import 'navbar_logo.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child:  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavbarLogo(),
          Get.width > mobileWidth ? const SizedBox(width: 50,): const SizedBox(),
          Get.width <= mobileWidth ? const SizedBox() :
          const NavbarItems()
        ],
      ),
    );
  }
}

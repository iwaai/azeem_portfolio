import 'package:jibrantalib/Controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarLogo extends StatelessWidget {
  final Function()? onTap;
  const NavbarLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: GetBuilder<MainController>(
          autoRemove: false,
          builder: (controller) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "<",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).textTheme.bodyMedium?.color),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  controller.myName,
                  style: TextStyle(
                      fontFamily: 'Agustina',
                      fontSize: 20,
                      color: Theme.of(context).textTheme.bodyMedium?.color),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "/ >",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).textTheme.bodyMedium?.color),
                ),
              ],
            );
          }),
    );
  }
}

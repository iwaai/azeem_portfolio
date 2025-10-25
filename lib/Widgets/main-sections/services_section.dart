import 'package:jibrantalib/Constants/app_colors.dart';
import 'package:jibrantalib/Controllers/main_controller.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../Constants/app_assets.dart';
import '../../Constants/dimensions.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller) {
          return Column(
            children: [
              const Text(
                "Services",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
              const Text(
                "What I can do?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              FB5Row(
                  classNames:
                      'col-12 px-${Get.width <= mobileWidth ? "2" : "8"} align-items-center justify-content-center',
                  children: controller.services.map((e) {
                    return FB5Col(
                      classNames: "col-12 col-md-6 col-lg-4 col-xl-3 m-3",
                      child: SizedBox(
                        height: 230,
                        child: FlipCard(
                            front: Container(
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                        color: Colors.grey.shade400)
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    e.icon,
                                    width: 40,
                                    height: 40,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    e.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            back: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                        color: Colors.grey.shade400)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 3,
                                              backgroundColor: Theme.of(context)
                                                  .primaryColorDark,
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              e.description[index],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        );
                                      },
                                      itemCount: e.description.length,
                                    ),
                                  ),
                                  const Divider(),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  ElevatedButton(
                                      onPressed: () async {
                                        await controller.hireMe();
                                      },
                                      child: const Text(
                                        "Hire Me",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            )),
                      ),
                    );
                  }).toList()),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        });
  }
}

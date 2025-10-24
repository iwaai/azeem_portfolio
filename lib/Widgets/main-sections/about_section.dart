import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jelly_anim/jelly_anim.dart';

import '/Constants/app_assets.dart';
import '/Constants/dimensions.dart';
import '/Controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:get/get.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller) {
          return FB5Row(
              classNames:
                  'col-12 px-${Get.width <= mobileWidth ? "2" : "8"} align-items-center justify-content-center',
              children: [
                FB5Col(
                    classNames: 'col-12 col-lg-4 col-xl-4 p-4',
                    child: Container(
                      width: 600,
                      height: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 4),
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              AppAssets.myPic1,
                            ),
                            alignment: Alignment.bottomCenter,
                          )),
                    )),
                FB5Col(
                    classNames:
                        'col-12 col-lg-7 col-xl-7 p-${Get.width <= mobileWidth ? "4" : "6"}',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "About Me",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                        // SizedBox(height: 20,),
                        const Text(
                          "Who am I?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "I am Jibran Talib, a full stack mobile application developer.",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          controller.aboutPara,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(),
                        FB5Row(children: [
                          FB5Col(
                            classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                            child: _codeWidget(
                                title: "Clean Code", icon: AppAssets.codeIcon),
                          ),
                          FB5Col(
                            classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                            child: _codeWidget(
                                title: "High Performance",
                                icon: AppAssets.performanceIcon),
                          ),
                          FB5Col(
                            classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                            child: _codeWidget(
                                title: "Better Experience",
                                icon: AppAssets.uxIcon),
                          ),
                          FB5Col(
                            classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                            child: _codeWidget(
                                title: "Security First",
                                icon: AppAssets.codeIcon),
                          ),
                        ]),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(),
                      ],
                    )),
              ]);
        });
  }

  Widget _codeWidget({required String title, required String icon}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 30,
              height: 30,
              color: Get.theme.primaryColorDark,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

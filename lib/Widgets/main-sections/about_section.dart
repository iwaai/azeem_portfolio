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
        builder: (controller){
          return FB5Row(
              classNames: 'col-12 px-${Get.width <= mobileWidth ? "3" : "8"}',
              children: [
                FB5Col(
                    classNames: 'col-12 col-lg-4 col-xl-4 p-5',
                    child: Get.width <= mobileWidth ? Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          border: Border.all(color: Theme.of(context).primaryColor, width: 4),
                          image: const DecorationImage(
                            image: AssetImage(AppAssets.myPic1),
                            alignment: Alignment.bottomCenter,
                          )
                      ),
                    ) :
                    SizedBox(
                      height: 500,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          JellyAnim(
                            jellyCount: 2,
                            // radius: 50,
                            radius: Get.width < mobileWidth ? 200 : 200,
                            // allowOverFlow: true,
                            jellyPosition: JellyPosition.bottomCenter,

                            viewPortSize: const  Size(400, 500),

                            colors: [Theme.of(context).primaryColor, Colors.brown],
                            jellyCoordinates: 5,
                          ),
                          Container(
                            height: 600,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(4),
                                image: const DecorationImage(
                                    image: AssetImage(AppAssets.myPic1),
                                    alignment: Alignment.bottomCenter
                                )
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                FB5Col(
                    classNames: 'col-12 col-lg-8 col-xl-8 p-5',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("About Me", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
                        // SizedBox(height: 20,),
                        const Text("Who am I?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const Text("I am Abdul Rehman, a full stack flutter developer, node.js api developer.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                        Text(controller.aboutPara, style: const TextStyle( fontSize: 16), textAlign: TextAlign.justify,),
                        const SizedBox(height: 15,),
                        const Divider(),
                        FB5Row(
                            children: [
                              FB5Col(
                                classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                                child: _codeWidget(title: "Clean Code", icon: AppAssets.codeIcon),
                              ),
                              FB5Col(
                                classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                                child: _codeWidget(title: "High Performance", icon: AppAssets.performanceIcon),
                              ),
                              FB5Col(
                                classNames: 'col-12 col-xl-4 col-md-6 col-lg-6',
                                child: _codeWidget(title: "Better Experience", icon: AppAssets.uxIcon),
                              ),
                            ]
                        ),
                        const SizedBox(height: 5,),
                        const Divider(),

                      ],
                    )
                ),
              ]
          );
        }
    );
  }

  Widget _codeWidget({required String title, required String icon}){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, width: 30, height: 30, color: Get.theme.primaryColorDark,),
            const SizedBox(width: 8,),
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

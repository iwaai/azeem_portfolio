import 'package:abdulrehman/Constants/app_colors.dart';
import 'package:abdulrehman/Controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:get/get.dart';

import '../../Constants/app_assets.dart';
import '../../Constants/dimensions.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller){
          return FB5Row(
              classNames: 'col-12 px-${Get.width <= mobileWidth ? "2" : "8"} align-items-center justify-content-center',
              children: [
                FB5Col(
                    classNames: 'col-12 col-lg-4 col-xl-4 p-4',
                    child:
                    Container(
                      height: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: AssetImage(AppAssets.toolsImage),
                              alignment: Alignment.bottomCenter
                          )
                      ),
                    )
                ),
                FB5Col(
                    classNames: 'col-12 col-lg-7 col-xl-7 p-${Get.width <= mobileWidth ? "4" : "6"}',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Skills", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
                        // SizedBox(height: 20,),
                        const Text("Expertise in various tools and technologies. A look into my skills set", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                       const SizedBox(height: 10,),
                        ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  LinearProgressIndicator(
                                    value: controller.skills[index].value / 10,
                                    minHeight: 30,
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xFFFFCF75),
                                    // color: const Color(0xFFFFCF75),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(controller.skills[index].title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(height: 8,),
                            itemCount: controller.skills.length
                        ),
                        const SizedBox(height: 5,),

                      ],
                    )
                ),
              ]
          );
        }
    );
  }
}

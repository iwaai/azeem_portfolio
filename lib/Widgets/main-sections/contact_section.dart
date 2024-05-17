import 'package:abdulrehman/Controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../Constants/app_assets.dart';
import '../../Constants/dimensions.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      autoRemove: false,
      builder: (controller) {
        return FB5Row(
            classNames: 'col-12 px-${Get.width <= mobileWidth ? "2" : "8"} align-items-center justify-content-center pb-5',
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
                            image: AssetImage(AppAssets.contactImage),
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
                      const Text("Contact Me", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
                      // SizedBox(height: 20,),
                      const Text("I am available for project based, full-time, part-time remote positions.", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      FB5Row(
                          classNames: 'col-12',
                          children: controller.contacts.map((e) {
                            return FB5Col(
                              classNames: 'col-12 col-md-6 col-lg-4 col-xl-4 p-2',
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SvgPicture.asset(e.icon, width: 35, height: 35, color: Theme.of(context).primaryColor,),
                                      const SizedBox(width: 8,),
                                      Text(e.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20), overflow: TextOverflow.ellipsis,),
                                    ],
                                  ),
                                  const SizedBox(height: 8,),
                                  SelectableText(e.value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),),

                                ],
                              ),
                            );
                          }).toList(),
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

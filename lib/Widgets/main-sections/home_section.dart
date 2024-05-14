import '/Constants/app_assets.dart';
import '/Controllers/main_controller.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jelly_anim/jelly_anim.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Animations/entrance_fader.dart';
import '../../Constants/dimensions.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller) {
          return FB5Row(
              classNames: 'col-12 align-items-center my-4',
              children: [
                FB5Col(
                  classNames: 'col-12 col-lg-6 col-xl-5 p-5',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Text("Welcome! hope you are doing well.", style: TextStyle(fontSize: 18),),
                          const SizedBox(width: 5,),
                          EntranceFader(
                            offset: const Offset(0, 0),
                            delay: const Duration(seconds: 2),
                            duration: const Duration(milliseconds: 800),
                            child: Image.asset(
                              AppAssets.hiIcon,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12,),
                      Text(controller.myName, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
                      const SizedBox(height: 10,),
                      EntranceFader(
                        offset: const Offset(-10, 0),
                        delay: const Duration(seconds: 1),
                        duration: const Duration(milliseconds: 800),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Theme.of(context).primaryColor,
                            ),

                            AnimatedTextKit(
                              animatedTexts: controller.roles.map((e) {
                                return TyperAnimatedText(
                                  ' $e',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                );
                              }).toList(),
                              isRepeatingAnimation: true,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 50,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: controller.socialLinks.map((e) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  hoverColor: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: ()async{
                                     if(e.url.isNotEmpty){
                                       await launchUrl(Uri.parse(e.url), mode: LaunchMode.externalApplication);
                                     }
                                  },
                                  child: SvgPicture.asset(e.icon, width: 40, height: 40, color: Theme.of(context).textTheme.bodyMedium?.color,),
                                ),
                                const SizedBox(width: 20,),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton.icon(
                        onPressed: ()async{
                          await controller.downloadCV();
                        },
                        icon: const Icon(Icons.picture_as_pdf),
                        label: const Text("Download Resume", style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
                FB5Col(
                  classNames: 'col-12 col-lg-6 col-xl-7 py-4',
                  child: SizedBox(
                    height: 500,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        JellyAnim(
                          jellyCount: 2,
                          // radius: 50,
                          radius: Get.width < mobileWidth ? 250 : 300,
                          // allowOverFlow: true,
                          jellyPosition: JellyPosition.bottomCenter,

                          viewPortSize: const  Size(600, 600),

                          colors: [Theme.of(context).primaryColor, Colors.grey],
                          jellyCoordinates: 5,
                        ),
                        Container(
                          height: 600,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                              image: AssetImage(AppAssets.myPic2),
                              alignment: Alignment.bottomCenter
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]
          );
        }
      ),
    );
  }
}

import 'package:abdulrehman/Constants/app_colors.dart';
import 'package:abdulrehman/Controllers/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../Constants/app_assets.dart';
import '../../Constants/dimensions.dart';
import '../../Models/experience.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
                              image: AssetImage(AppAssets.experienceImage),
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
                        const Text("Experience", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
                        // SizedBox(height: 20,),
                        const Text("Here is my job timeline ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                       const SizedBox(height: 10,),
                        ExperienceTimeline(experiences: controller.experiences,),
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

class ExperienceTimeline extends StatelessWidget {
  final List<Experience> experiences;
  const ExperienceTimeline({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {

    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        nodePosition: 0,
        color: Theme.of(context).primaryColor,
        indicatorTheme: const IndicatorThemeData(
          position: 0,
          size: 40.0,
        ),
        connectorTheme: const ConnectorThemeData(
          thickness: 2.5,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        contentsAlign: ContentsAlign.basic,
        itemCount: experiences.length,
        indicatorBuilder: (_, index) {
          return  DotIndicator(
            color: Theme.of(context).primaryColor,
            child: Icon(
              Icons.home_repair_service,
              color: AppColors.secondaryColor,
              size: 25.0,
            ),
          );
        },
        contentsBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(experiences[index].jobTitle, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  const SizedBox(
                    width: 380,
                    child: Divider(),
                  ),
                  Wrap(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.calendar_month),
                            const SizedBox(width: 5,),
                            Text(DateFormat("MMMM-yyyy").format(experiences[index].start), style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        const SizedBox(width: 8,),
                        const Text(" - "),
                        const SizedBox(width: 8,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.calendar_month),
                            const SizedBox(width: 5,),
                            Text(DateFormat("MMMM-yyyy").format(experiences[index].end), style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 380,
                        child: Divider(),
                    ),
                    Wrap(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.location_city),
                            const SizedBox(width: 5,),
                            Flexible(child: Text(experiences[index].company, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,)),
                          ],
                        ),
                        const SizedBox(width: 8,),
                        const Text(" - "),
                        const SizedBox(width: 8,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.location_pin),
                            const SizedBox(width: 5,),
                            Flexible(child: Text(experiences[index].location, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,)),
                          ],
                        ),
                      ],
                    ),
                  const SizedBox(
                    width: 380,
                    child: Divider(),
                  ),
                     const Chip(label: Text("Responsibilities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
                    const SizedBox(height: 8,),
                    for(int i =0; i < experiences[index].details.length; i++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Theme.of(context).primaryColorDark,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Expanded(child: Text(experiences[index].details[i], style: const TextStyle(fontWeight: FontWeight.bold),)),
                        ],
                      )
                  ],
              ),
            ),
          );
        },
        connectorBuilder: (_, index, ___) => SolidLineConnector(
          color: Theme.of(context).primaryColor,
        ),

      ),
    );
  }
}


import 'package:abdulrehman/Constants/app_colors.dart';
import 'package:abdulrehman/Controllers/main_controller.dart';
import 'package:abdulrehman/Models/project.dart';
import 'package:abdulrehman/Widgets/formatted_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Constants/app_assets.dart';
import '../../Constants/dimensions.dart';
import '../project_carousel.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller){
          int length = 0;
          if(controller.projects.length <= 6){
            length = controller.projects.length;
          }
          else if(controller.projects.length > 6 ){
            if(controller.showAllProjects){
              length = controller.projects.length;
            }
            else{
              length = 6;
            }
          }
          return Column(
            children: [
              const Text("Projects", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
              const SizedBox(height: 5,),
              const Text("What I have done", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),

              FB5Row(
                  classNames: 'col-12 px-${Get.width <= mobileWidth ? "2" : "8"} align-items-center justify-content-center',
                  children: List.generate(length, (index) {
                    var e = controller.projects[index];
                    return FB5Col(
                      classNames: "col-12 col-md-6 col-lg-4 col-xl-3 m-3",
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Colors.grey.shade400
                              )
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                image: DecorationImage(
                                  image: AssetImage(e.coverImage),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18), overflow: TextOverflow.ellipsis,),
                                  Text(e.shortDescription, style: const TextStyle(fontSize: 14), maxLines: 4, textAlign: TextAlign.justify, overflow: TextOverflow.ellipsis,),

                                ],
                              ),
                            ),
                            const Divider(),
                            SizedBox(
                              width: double.maxFinite,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: ElevatedButton.icon(
                                    onPressed: (){
                                      _showProjectDialog(context, e);
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                      ))
                                    ),
                                    icon: SvgPicture.asset(AppAssets.projectIcon, width: 25, height: 20,),
                                    label: const Text("See Details", style: TextStyle(fontWeight: FontWeight.bold),)
                                ),
                              ),
                            ),
                            const SizedBox(height: 5,),
                          ],
                        ),
                      )
                    );
                  }).toList()
              ),
              const SizedBox(height: 10,),
              controller.showAllProjects == false ?
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    controller.showAllProjects = true;
                  },
                  child: const Text("Show More", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ) : const SizedBox(),
              const SizedBox(height: 20,),
            ],
          );
        }
    );
  }

  _showProjectDialog(BuildContext context, Project project) async
  {
    Widget errorDialog = Padding(
      padding:  EdgeInsets.symmetric(horizontal: Get.width <= 500 ? 0 : 50 , vertical: Get.width <= 500 ? 0 : 50),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // backgroundColor: Colors.white,
        // surfaceTintColor: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _ProjectDetailsView(project: project,),
            ),
            Positioned(
              top: 5.0,
              right: 5.0,
              child: InkWell(
                onTap: (){
                  Get.back();
                },
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: const Icon(Icons.cancel),
              ),
            )
          ],
        ),
      ),
    );
    return await showDialog(context: context, builder: (BuildContext context) => errorDialog, barrierDismissible: false);
  }

}

class _ProjectDetailsView extends StatelessWidget {
  final Project project;
  const _ProjectDetailsView({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    double height = 500;
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        SizedBox(
          width: double.maxFinite,
          height: height,
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(project.coverImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.9)
                ),
              ),
              Center(
                child: ProjectCarousel(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 500,
                  assetImages: project.images,
                  isWeb: project.isWeb,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          runSpacing: 10,
          children: [
            Text(project.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            project.url == null ? const SizedBox() :
            ElevatedButton(
                onPressed: ()async{
                  await launchUrl(Uri.parse(project.url.toString()), mode: LaunchMode.externalApplication);
                },
                child: Text(project.isWeb == true ? "View Website" : "Download App", style: const TextStyle(fontWeight: FontWeight.bold),)
            )
          ],
        ),
        const SizedBox(height: 5,),
        FormattedText(text: project.longDescription)
      ],
    );
  }
}


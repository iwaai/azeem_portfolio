
import 'package:abdulrehman/Constants/app_colors.dart';
import 'package:abdulrehman/Constants/dimensions.dart';
import 'package:abdulrehman/Controllers/main_controller.dart';
import 'package:abdulrehman/Widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widgets/app_bar.dart';
import '../Widgets/main-sections/home_section.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const MyAppBar(),
      ),
      drawer: size.width <= mobileWidth ? const AppDrawer() : null,
      body: GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller){
          return Stack(
            children: [
              ListView.separated(
                controller: controller.scrollController,
                itemCount: controller.sections.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      key: Key("Section_$index}"),
                      child: controller.sections[index],
                  );
                },
                separatorBuilder: (context ,index) => const SizedBox(height: 15,),
              ),
              Positioned(
                  right: 0,
                  bottom: 100,
                  child: InkWell(
                    onTap: (){
                      controller.selectedSection = 0;
                    },
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                    child: Ink(
                      width: 40,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
                      ),
                      child: Icon(Icons.arrow_upward, color: AppColors.secondaryColor,),
                    ),
                  )
              )
            ],
          );
        },
      ),
    );
  }
}

import 'package:abdulrehman/Controllers/main_controller.dart';
import 'package:abdulrehman/Controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'navbar_item_button.dart';

class NavbarItems extends StatelessWidget {
  const NavbarItems({super.key});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller) {
          return FB5Row(
              classNames: 'col-12 px-2 justify-content-end align-items-center',
              children: [
                for(var item in controller.sectionsList)
                  FB5Col(
                    classNames: 'p-1',
                    child: NavbarItemButton(
                      onTap: (){
                        controller.findTheSelectedItemIndex(item.title);
                      },
                      text: item.title,
                      // icon: SvgPicture.asset(item.icon, width: 18, height: 18, color: Theme.of(context).textTheme.bodyMedium?.color,),
                    )
                  ),
                FB5Col(
                  classNames: 'p-1',
                  child: OutlinedButton(
                    onPressed: ()async{
                      await controller.hireMe();
                    },
                    child: const Text("Hire me", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, ),),
                  ),
                ),
                FB5Col(
                  classNames: 'p-1',
                  child: GetBuilder<ThemeController>(
                    autoRemove: false,
                    builder: (theme) {
                      return Switch(
                        onChanged: (val){
                          theme.darkMode = val;
                        },
                        splashRadius: 10,
                        value: theme.darkMode,
                        thumbIcon: MaterialStatePropertyAll(Icon(theme.darkMode ? Icons.brightness_4 : Icons.brightness_high, color: Colors.white,)),

                      );
                    }
                  ),
                )
              ]
          );
        }
      ),
    );
  }
}

import '/Constants/app_assets.dart';
import '/Controllers/main_controller.dart';
import '/Widgets/navbar_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Controllers/theme_controller.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: GetBuilder<MainController>(
        autoRemove: false,
        builder: (controller) {
          return ListView(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: NavbarLogo(),
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset(AppAssets.brightnessIcon, width: 20, height: 20, color: Theme.of(context).textTheme.bodyMedium?.color,),
                title: const Text("Dark Mode", style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: GetBuilder<ThemeController>(
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
              ),
              const Divider(),
              for(var item in controller.sectionsList)
                ListTile(
                  leading: SvgPicture.asset(item.icon, width: 20, height: 20, color: Theme.of(context).textTheme.bodyMedium?.color,),
                  title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
                  onTap: (){
                    controller.findTheSelectedItemIndex(item.title);
                  },
                ),

              const SizedBox(height: 15,),
              OutlinedButton(
                  onPressed: ()async{
                    await controller.hireMe();
                  },
                  child: const Text("Hire Me", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins',),)
              )
            ],
          );
        }
      ),
    );
  }
}

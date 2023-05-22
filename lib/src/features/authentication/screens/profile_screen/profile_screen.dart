// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pettie_petstore/src/constants/color_manager.dart';
import 'package:pettie_petstore/src/constants/image_string.dart';
import 'package:pettie_petstore/src/constants/size.dart';
import 'package:pettie_petstore/src/features/authentication/screens/profile_screen/profile_update_screen.dart';
import 'package:pettie_petstore/src/features/authentication/screens/profile_screen/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title:
            Text("Profile", style: Theme.of(context).textTheme.displayMedium),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(pDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage((welcomeImg2))),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                     
                      child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: tPrimaryColor.withOpacity(0.1),
                                  ),
                                  child:  IconButton(onPressed: (){}, icon:Icon(LineAwesomeIcons.alternate_pencil,
                                  color: Colors.black,
                                  size: 20,)
                                  )
                                ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "code with Me",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                "frankroyal41@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=>ProfileUpdateScreen() ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: cDarkColor),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(title:"setting",icon: LineAwesomeIcons.cog,onPress: (){},),
               ProfileMenuWidget(title:"Billing Details",icon: LineAwesomeIcons.wallet,onPress: (){},),
               ProfileMenuWidget(title:"User Management",icon: LineAwesomeIcons.user_check,onPress: (){},),
               const Divider(height: 10,),
                ProfileMenuWidget(title:"Information",icon: LineAwesomeIcons.info,onPress: (){},),
                 ProfileMenuWidget(title:"Logout",icon: LineAwesomeIcons.alternate_sign_out,onPress: (){},
                 textColor:Colors.red,
                 endIcon: false,),
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}


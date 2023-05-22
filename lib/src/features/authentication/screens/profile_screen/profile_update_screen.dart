// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/color_manager.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/size.dart';

class ProfileUpdateScreen extends StatelessWidget {
  const ProfileUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          "Edit Profile",
          style: Theme.of(context).textTheme.displayMedium,
        ),
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
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LineAwesomeIcons.camera,
                                color: Colors.black,
                                size: 20,
                              ))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Full Name"),
                        prefixIcon: Icon(Icons.person_rounded),
                      ),
                    ),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                      label: Text("Phone"),
                      prefixIcon: Icon(Icons.phone_android_outlined),
                    )),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.fingerprint_outlined),
                      ),
                    ),

                    SizedBox(height: tFormHeight,),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(onPressed: () => Get.to(()=> ProfileUpdateScreen()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tPrimaryColor, side: BorderSide.none, shape: StadiumBorder()
                      ),
                       child: Text("Edit Profile", style: TextStyle(color: tDarkColor),)),
                      
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

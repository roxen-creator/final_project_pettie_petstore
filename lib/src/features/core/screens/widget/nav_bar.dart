import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pettie_petstore/src/features/authentication/screens/profile_screen/profile_screen.dart';



class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
  color:Colors.black,
  child:SizedBox(

    height: 70,
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        IconButton(icon: const Icon(Icons.home, color: Colors.white,), onPressed: (){
          navigator?.pushNamed('/');
        },),
 IconButton(icon: const Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
          navigator?.pushNamed('/cart');
          
        },),
         IconButton(icon: const Icon(Icons.person, color:Colors.white),   onPressed: () => Get.to(() => const ProfileScreen()),),
      ]
    )
  )
);
  }
}
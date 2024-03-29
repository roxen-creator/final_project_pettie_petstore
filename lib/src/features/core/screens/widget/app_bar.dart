import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pettie_petstore/src/features/core/screens/screens.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const MyAppBar({
    Key? key, 
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
        title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10,),
        child: Text(
          title, 
          style: const TextStyle(
            color: Colors.white, 
            fontFamily: 'Avenir', 
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
         onPressed: () => Get.to(() =>  const Wishlist()),
          icon: const Icon(Icons.favorite),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(50);
}
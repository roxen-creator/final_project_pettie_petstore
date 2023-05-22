// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:pettie_petstore/src/constants/color_manager.dart';


class TextFormFieldTheme{
  TextFormFieldTheme._();


static InputDecorationTheme lightInputDecorationTheme =
 InputDecorationTheme(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
  prefixIconColor: cSecondaryColor,
  floatingLabelStyle: const TextStyle(color: cSecondaryColor),
  focusedBorder:  OutlineInputBorder(
    borderRadius:BorderRadius.circular(100),
    borderSide: BorderSide(width:2 , color: cSecondaryColor),)
);

static InputDecorationTheme darktInputDecorationTheme =
 InputDecorationTheme(
   border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
  prefixIconColor: cPrimaryColor,
  floatingLabelStyle: const TextStyle(color: cPrimaryColor),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(100),
    borderSide: BorderSide(width:2 , color: cPrimaryColor),)
);

}
import 'package:flutter/material.dart';

import '../../../constants/color_manager.dart';
import '../../../constants/size.dart';

class PElevatedButtonTheme{
  PElevatedButtonTheme();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
style: OutlinedButton.styleFrom(
                  elevation: 0,
                  
                // shape:  StadiumBorder(),
                 shape: const StadiumBorder(),
                
               backgroundColor: cSecondaryColor,
               foregroundColor: cWhiteColor,
                side:  const BorderSide(color: cSecondaryColor),
            padding:  const EdgeInsets.symmetric(vertical:pButtonHeight, horizontal: pButtonWidth),
                ),
);


 static final darkElevatedButtonTheme = ElevatedButtonThemeData(
style: OutlinedButton.styleFrom(
                  elevation: 0,
                // shape: const StadiumBorder(),
               shape: const StadiumBorder(),
  
               foregroundColor: cSecondaryColor,
               backgroundColor:cWhiteColor,

               
                side:  const BorderSide(color: cWhiteColor),
                padding:  const EdgeInsets.symmetric(vertical:pButtonHeight, horizontal: pButtonWidth),
                ),
);

}
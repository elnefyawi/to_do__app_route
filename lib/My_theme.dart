import 'package:flutter/material.dart';

class MyTheme {
  static Color backgroundLight = Color(0xffDFECDB);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color greyColor = Color(0xffC8C9CB);
  static Color primaryColor = Color(0xff5D9CEC);
  static Color blackColor = Color(0xff383838);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffEC4B4B);
  static Color primaryDarkColor = Color(0xff141922);
  static Color backgroundDark = Color(0xff060E1E);

  static ThemeData lightTheme = ThemeData(

    scaffoldBackgroundColor: MyTheme.backgroundLight,

    appBarTheme: AppBarTheme(
      backgroundColor: MyTheme.primaryColor,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: MyTheme.primaryColor,
        unselectedItemColor: MyTheme.greyColor,
        backgroundColor: Colors.transparent,
        elevation: 0),

    bottomSheetTheme: BottomSheetThemeData(shape: RoundedRectangleBorder(borderRadius:
    BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20) ))),

    textTheme: TextTheme(titleLarge: TextStyle(
        fontWeight:FontWeight.bold ,
        fontSize:25 ,color: MyTheme.whiteColor),
    titleMedium:  TextStyle(
        fontWeight:FontWeight.bold ,
        fontSize:22 ,color: MyTheme.blackColor),
    titleSmall: TextStyle(
        fontWeight:FontWeight.bold ,
        fontSize:20 ,color: MyTheme.blackColor)),

    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: MyTheme.primaryColor),
  );
}

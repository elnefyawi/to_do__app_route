import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_route/HomeScreen.dart';
import 'package:to_do_app_route/My_theme.dart';

void main()
{

  runApp(MyApp());


}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(

    initialRoute: HomeScreen.routeName ,
    routes:
    {

 HomeScreen.routeName : (context) => HomeScreen(),

    },
    theme: MyTheme.lightTheme,
  );

  }





}
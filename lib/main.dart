import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/plant%20_screens/maize_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/select_region/selectRegion.dart';
import 'package:plant_app/screens/region3/region3.dart';


import 'screens/region4/region4.dart';
import 'screens/region5/region5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: Region5(),

      initialRoute: FormPage.id,
      routes: {
        MaizeScreen.id: (context) => const MaizeScreen(),
        FormPage.id: (context) => FormPage(title: "title"),
        HomeScreen.id: (context) => HomeScreen(),

      },
    );
  }
}

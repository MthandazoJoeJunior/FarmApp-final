import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/plant%20_screens/groundnuts_screen.dart';
import 'package:plant_app/plant%20_screens/maize_screen.dart';
import 'package:plant_app/plant%20_screens/millet_screen.dart';
import 'package:plant_app/plant%20_screens/peas_screen.dart';
import 'package:plant_app/plant%20_screens/potatoes_screen.dart';
import 'package:plant_app/plant%20_screens/sorghum_screen.dart';
import 'package:plant_app/plant%20_screens/soyabeans_screen.dart';
import 'package:plant_app/plant%20_screens/sugarbeans_screen.dart';
import 'package:plant_app/plant%20_screens/sunflower_screen.dart';
import 'package:plant_app/plant%20_screens/wheat_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/region2/region2.dart';
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
      title: 'Farm Easy',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: Region5(),

      initialRoute: FormPage.id,
      routes: {
        MaizeScreen.id: (context) => MaizeScreen(),
        FormPage.id: (context) => FormPage(title: "title"),
        HomeScreen.id: (context) => HomeScreen(),
        Region2.id: (context) => Region2(),
        Region3.id: (context) => Region3(),
        Region4.id: (context) => Region4(),
        Region5.id: (context) => Region5(),
        GroundnutsScreen.id: (context) => GroundnutsScreen(),
        MilletScreen.id: (context) => MilletScreen(),
        PeasScreen.id: (context) => PeasScreen(),
        PotatoesScreen.id: (context) => PotatoesScreen(),
        SorghumScreen.id: (context) => SorghumScreen(),
        SoyabeansScreen.id: (context) => SoyabeansScreen(),
        SugarBeansScreen.id: (context) => SugarBeansScreen(),
        SunflowerScreen.id: (context) => SunflowerScreen(),
        WheatScreen.id: (context) => WheatScreen(),


      },
    );
  }
}

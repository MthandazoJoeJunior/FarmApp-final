import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/navigation_screens/contacts.dart';
import 'package:plant_app/navigation_screens/help_support.dart';
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
import 'package:plant_app/region_plants/region1/region1_maize.dart';
import 'package:plant_app/region_plants/region1/region1_peas.dart';
import 'package:plant_app/region_plants/region1/region1_potato.dart';
import 'package:plant_app/region_plants/region2/region2_groundnuts.dart';
import 'package:plant_app/region_plants/region2/region2_maize.dart';
import 'package:plant_app/region_plants/region2/region2_sorghum.dart';
import 'package:plant_app/region_plants/region2/region2_soyabeans.dart';
import 'package:plant_app/region_plants/region2/region2_wheat.dart';
import 'package:plant_app/region_plants/region3/region3_groundnuts.dart';
import 'package:plant_app/region_plants/region3/region3_maize.dart';
import 'package:plant_app/region_plants/region3/region3_sugarbeans.dart';
import 'package:plant_app/region_plants/region3/region3_sunflower.dart';
import 'package:plant_app/region_plants/region4/region4_maize.dart';
import 'package:plant_app/region_plants/region4/region4_millet.dart';
import 'package:plant_app/region_plants/region4/region4_sorghum.dart';
import 'package:plant_app/region_plants/region4/region4_sugarbeans.dart';
import 'package:plant_app/region_plants/region5/region5_maize.dart';
import 'package:plant_app/region_plants/region5/region5_millet.dart';
import 'package:plant_app/region_plants/region5/region5_sorghum.dart';
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
      title: 'Easy Farm',
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
        Contacts.id: (context) => Contacts(),
        HelpSupport.id: (context) => HelpSupport(),

        // plant screen routes

        // region1 plant routes
        MaizeRegion1.id: (context) => MaizeRegion1(),
        PeasRegion1.id: (context) => PeasRegion1(),
        PotatoRegion1.id: (context) => PotatoRegion1(),

        // region2
        MaizeRegion2.id: (context) => MaizeRegion2(),
        WheatRegion2.id: (context) => WheatRegion2(),
        GroundNutsRegion2.id: (context) => GroundNutsRegion2(),
        SorghumRegion2.id: (context) => SorghumRegion2(),
        SoyaBeansRegion2.id: (context) => SoyaBeansRegion2(),

        // region3
        MaizeRegion3.id: (context) => MaizeRegion3(),
        GroundNutsRegion3.id: (context) => GroundNutsRegion3(),
        SunFlowerRegion3.id: (context) => SunFlowerRegion3(),
        SugarBeansRegion3.id: (context) => SugarBeansRegion3(),

        // region 4
        MaizeRegion4.id: (context) => MaizeRegion4(),
        MilletRegion4.id: (context) => MilletRegion4(),
        SorghumRegion4.id: (context) => SorghumRegion4(),
        SugarBeansRegion4.id: (context) => SugarBeansRegion4(),

        //region5
        MaizeRegion5.id: (context) => MaizeRegion5(),
        MilletRegion5.id: (context) => MilletRegion5(),
        SorghumRegion5.id: (context) => SorghumRegion5()
      },
    );
  }
}

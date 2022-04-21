import 'package:flutter/material.dart';
import 'package:plant_app/plant _screens/maize_screen.dart';
import 'package:plant_app/plant _screens/wheat_screen.dart';
import 'package:plant_app/plant _screens/groundnuts_screen.dart';
import 'package:plant_app/plant _screens/sunflower_screen.dart';
import 'package:plant_app/plant _screens/soyabeans_screen.dart';
import 'package:plant_app/region_plants/region3/region3_groundnuts.dart';
import 'package:plant_app/region_plants/region3/region3_maize.dart';
import 'package:plant_app/region_plants/region3/region3_sunflower.dart';
//import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Maize",
            press: () {
              _maize_screen(context);
            },
          ),
          RecomendPlantCard(
            image: "assets/images/groundnuts.jpg",
            title: "Groundnuts",
            press: () {
              _groundnuts_screen(context);
            },
          ),
          RecomendPlantCard(
            image: "assets/images/sunflower.jpg",
            title: "  SunFlower",
            press: () {
              _sunflower_screen(context);
            },
          ),
        ],
      ),
    );
  }

  _maize_screen(context) async {
    Navigator.pushReplacementNamed(context, MaizeRegion3.id);
  }

  _sunflower_screen(context) async {
    Navigator.pushReplacementNamed(context, SunFlowerRegion3.id);
  }

  _groundnuts_screen(context) async {
    Navigator.pushReplacementNamed(context, GroundNutsRegion3.id);
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

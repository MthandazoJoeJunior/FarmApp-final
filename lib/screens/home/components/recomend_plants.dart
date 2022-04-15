import 'package:flutter/material.dart';
import 'package:plant_app/region_plants/region1/region1_maize.dart';
import 'package:plant_app/region_plants/region1/region1_peas.dart';
import 'package:plant_app/region_plants/region1/region1_potato.dart';
import 'package:plant_app/select_region/selectRegion.dart';
//import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  static const String id = 'RecR1';
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
              _region1_maize(context);
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Potatoes",
            press: () {
              _potatoes_screen(context);
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Peas",
            press: () {
              _peas_screen(context);
            },
          ),
        ],
      ),
    );
  }

  _region1_maize(context) async {
    Navigator.pushReplacementNamed(context, MaizeRegion1.id);
  }

  _potatoes_screen(context) async {
    Navigator.pushReplacementNamed(context, PotatoRegion1.id);
  }

  _peas_screen(context) async {
    Navigator.pushReplacementNamed(context, PeasRegion1.id);
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

import 'package:flutter/material.dart';
import 'package:plant_app/plant _screens/maize_screen.dart';
import 'package:plant_app/plant _screens/millet_screen.dart';
import 'package:plant_app/plant _screens/groundnuts_screen.dart';
import 'package:plant_app/plant _screens/sorghum_screen.dart';
import 'package:plant_app/region_plants/region4/region4_maize.dart';
import 'package:plant_app/region_plants/region4/region4_millet.dart';
import 'package:plant_app/region_plants/region4/region4_sorghum.dart';

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
            image: "assets/images/sorghum.jpg",
            title: "Sorghum",
            press: () {
              _sorghum_screen(context);
            },
          ),
          RecomendPlantCard(
            image: "assets/images/millet.jpg",
            title: "  Millet",
            press: () {
              _millet_screen(context);
            },
          ),
        ],
      ),
    );
  }

  _maize_screen(context) async {
    Navigator.pushReplacementNamed(context, MaizeRegion4.id);
  }

  _millet_screen(context) async {
    Navigator.pushReplacementNamed(context, MilletRegion4.id);
  }

  _sorghum_screen(context) async {
    Navigator.pushReplacementNamed(context, SorghumRegion4.id);
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

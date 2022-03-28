import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/select_region/selectRegion.dart';

import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          SizedBox(height: kDefaultPadding),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text('Back'),
              onPressed: () =>{
                _selectRegion(context)
              },
            ),
          ),
        ],
      ),

    );
  }
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, FormPage.id);
  }
}
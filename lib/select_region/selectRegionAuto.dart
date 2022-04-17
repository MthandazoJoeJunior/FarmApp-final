import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectYourRegion extends StatefulWidget {
  const SelectYourRegion({Key key}) : super(key: key);
  static const String id = 'selectYourRegion';

  @override
  State<SelectYourRegion> createState() => _SelectYourRegionState();
}

class _SelectYourRegionState extends State<SelectYourRegion> {
  String selectedValue = "My Province";
  int currentRegion = 0;
  List<String> regions = [
    'My Province',
    'Bulawayo Province',
    'Harare Province',
    'Manicaland Province.',
    'Mashonaland Central Province',
    'Mashonaland East Province',
    'Mashonaland West Province',
    'Masvingo Province',
    'Matabeleland North Province.',
    'Matabeleland South Province',
    'Midlands Province',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Center(
        child: ListView(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "GafaaaaaS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/image_1.png'),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
              ),
            ),
            DropdownButton<String>(
              value: selectedValue,
              icon: const Icon(Icons.arrow_downward),
              style: const TextStyle(color: Colors.deepPurple),
              onChanged: (String newValue) {
                //change the region you are in
                switch (newValue) {
                  case "Bulawayo Province":
                    currentRegion = 1;
                    break;
                  case "Harare Province":
                    currentRegion = 2;
                    break;

                  default:
                    currentRegion = 0;
                }

                setState(() {
                  selectedValue = newValue;
                  currentRegion = currentRegion;
                });
              },
              items: regions.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Text("Your region is  $currentRegion"),
            SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {
                log("helllo gafa");
                log(selectedValue);
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    ));
  }
}

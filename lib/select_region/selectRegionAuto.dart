import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/navigation_screens/contacts.dart';
import 'package:plant_app/navigation_screens/help_support.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/region2/region2.dart';
import 'package:plant_app/screens/region3/region3.dart';
import 'package:plant_app/screens/region4/region4.dart';
import 'package:plant_app/screens/region5/region5.dart';

class SelectYourRegion extends StatefulWidget {
  const SelectYourRegion({Key key}) : super(key: key);
  static const String id = 'selectYourRegion';

  @override
  State<SelectYourRegion> createState() => _SelectYourRegionState();
}

class _SelectYourRegionState extends State<SelectYourRegion> {
  String selectedValue = "My Province";
  String currentRegion = "";
  List<String> regions = [
    'My Province',
    'Bulawayo Province',
    'Harare Province',
    'Manicaland Province',
    'Mashonaland Central Province',
    'Mashonaland East Province',
    'Mashonaland West Province',
    'Masvingo Province',
    'Matabeleland North Province',
    'Matabeleland South Province',
    'Midlands Province',
  ];

  Future<bool> _onWillPop(context) async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit Easy Farm'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Easy Farm",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage('assets/images/image_1.png'),
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.93,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.green)),
                        ),
                        value: selectedValue,
                        icon: const Icon(Icons.arrow_downward),
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue) {
                          //change the region you are in
                          switch (newValue) {
                            case "Bulawayo Province":
                              currentRegion = "4";
                              break;
                            case "Harare Province":
                              currentRegion = "2A";
                              break;
                            case "Manicaland Province":
                              currentRegion = "2B";
                              break;
                            case "Mashonaland Central Province":
                              currentRegion = "2A";
                              break;
                            case "Mashonaland East Province":
                              currentRegion = "2B";
                              break;
                            case "Mashonaland West Province":
                              currentRegion = "3";
                              break;
                            case "Masvingo Province":
                              currentRegion = "5";
                              break;
                            case "Matabeleland North Province":
                              currentRegion = "3";
                              break;
                            case "Matabeleland South Province":
                              currentRegion = "5";
                              break;
                            case "Midlands Province":
                              currentRegion = "3";
                              break;
                            default:
                              currentRegion = "";
                          }

                          setState(() {
                            selectedValue = newValue;
                            currentRegion = currentRegion;
                          });
                        },
                        items: regions
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 17),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Estimate Region $currentRegion",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        child: const Text('Next'),
                        onPressed: () {
                          switch (currentRegion) {
                            case "4":
                              _region4(context);
                              break;
                            case "2A":
                              _region2(context);
                              break;
                            case "2B":
                              _region2(context);
                              break;
                            case "1":
                              home_screen(context);
                              break;
                            case "3":
                              _region3(context);
                              break;
                            case "5":
                              _region5(context);
                              break;
                            default:
                          }
                        }
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100.0,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'EASY FARM',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                leading: IconButton(
                  icon: Icon(Icons.home),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Contact Us'),
                leading: IconButton(
                  icon: Icon(Icons.contact_phone),
                ),
                onTap: () {
                  _contacts(context);
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Help & Support'),
                leading: IconButton(
                  icon: Icon(Icons.contact_support),
                ),
                onTap: () {
                  _help_support(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

home_screen(context) async {
  Navigator.pushReplacementNamed(context, HomeScreen.id);
}

_region2(context) async {
  Navigator.pushReplacementNamed(context, Region2.id);
}

_region3(context) async {
  Navigator.pushReplacementNamed(context, Region3.id);
}

_region4(context) async {
  Navigator.pushReplacementNamed(context, Region4.id);
}

_region5(context) async {
  Navigator.pushReplacementNamed(context, Region5.id);
}

_contacts(context) async {
  Navigator.pushReplacementNamed(context, Contacts.id);
}

_help_support(context) async {
  Navigator.pushReplacementNamed(context, HelpSupport.id);
}

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/region2/region2.dart';
import 'package:plant_app/screens/region3/region3.dart';
import 'package:plant_app/screens/region4/region4.dart';
import 'package:plant_app/screens/region5/region5.dart';

class FormPage extends StatelessWidget {
  FormPage({Key key,  this.title}) : super(key: key);
  static const String id = 'regionSelection';
  static const String _title = 'Murimi Wanhasi';
  String region_value = '';

  final formKey = GlobalKey<FormState>();
  final String title;

  @override
  Widget build(BuildContext context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:

      case TargetPlatform.android:
      default:
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text(
                _title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 150,
                        child: CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage('assets/images/image_1.png'),
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  FastForm(
                    formKey: formKey,
                    children: _buildForm(context),
                    onChanged: (value) {
                      // ignore: avoid_print
                      region_value = value.toString().substring(value.toString().length-9,value.toString().length-1);
                     // region_value = value.toString();
                      print(region_value);
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: const Text('Next'),
                    onPressed: () =>{
                      if(region_value == "Region 1"){
                        _home_screen(context),
                      }
                      else if(region_value == "Region 2"){
                        _region2(context),
                      }
                      else if(region_value == "Region 3"){
                          _region3(context),
                        }
                        else if(region_value == "Region 4"){
                            _region4(context),
                          }
                          else if(region_value == "Region 5"){
                              _region5(context),
                            }
                          else if (region_value == "y Region" ) {
                            print("nothing"),
                              }
                      //formKey.currentState?.reset()

                    },
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }



  List<Widget> _buildForm(BuildContext context) {
    return [
      FastFormSection(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        header: const Padding(
          padding: EdgeInsets.all(12.0),

        ),
        children: [

          FastDropdown(
            id: 'province',
            label: 'Select Your Province',
            items: const [
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
            ],
            initialValue: 'My Province',
          ),
          FastDropdown(
            id: 'region',
            label: 'Select Your Region',
            items: const [
              'My Region',
              'Region 1',
              'Region 2',
              'Region 3',
              'Region 4',
              'Region 5'
            ],
            initialValue: 'My Region',
          ),
        ],
      ),
    ];
  }

  _home_screen(context) async {
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

}

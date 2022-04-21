import 'package:flutter/material.dart';
import 'package:plant_app/screens/region2/region2.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class WheatRegion2 extends StatefulWidget {
  static const String id = 'WheatRegion2';
  const WheatRegion2({Key key}) : super(key: key);
  @override
  _WheatRegion2State createState() => _WheatRegion2State();
}

class _WheatRegion2State extends State<WheatRegion2> {
  bool showSpinner = false;

  static const String _title = 'Wheat';

  Future<bool> _onWillPop(context) async {
    return (_selectRegion(context));
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text(
              _title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )),
        body: const PlantDetails(),
      ),
    );
  }
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, Region2.id);
  }
}

class PlantDetails extends StatefulWidget {
  const PlantDetails({Key key}) : super(key: key);

  @override
  State<PlantDetails> createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/wheat.jpg'),
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
            ),
          ),
          ExpansionTile(
            title: const Text(
              'Planting Dates',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            // subtitle: const Text('favourable time of planting'),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                'The optimum time for planting winter wheat is between mid-April and the last week of May',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Seed Types',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            // subtitle: const Text('favourable time of planting'),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                    '''SC Nduna (White seeded)*,
SC Sekuru (Red seeded), 
SC Smart (Red seeded), 
SC Stallion (red seeded),
Sky (Red seeded), 
Select (White seeded)*,
Serena (White seeded).

*these are the reccomended as they are disease resistant.
''',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Fertilization',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                '''Basal Application
wheat requires a basal application of 300 to 500 kg/ha of a compound fertiliser (such as 7-14-7).

Top Dressing.
Apply a top dressing of 350 to 500 kg of Urea or Ammonium Nitrate per ha.

For a for information consult your head regional farmer.            
                 ''',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Weed Control',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                '''
Banvel and MCPA combination covers a wide spectrum of broad leaf weeds and is recommended. 


Farmers are advised to use some wheat specific post-emergence herbicide which should be 
applied after a light irrigation which follows the hardening period (2 WACE-Weeks After Crop 
Emergence).    

It is important for farmers to read labels whenever they are applying herbicides.           
                ''',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'Disease Control',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                '''
Diseases such as Leaf rust, Stem rust, Powdery mildew, Fusarium head blight and Take-all may cause yield reduction. 
Farmers must seek professional advice on how to control these diseases. 

Consult Agrochemical companies for more information on chemicals.            
                ''',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          ExpansionTile(
            title: const Text(
              'General tips',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                '''
Plan ahead: evaluate available water resources in order to calculate wheat area based on proposed gross application.
                ''',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text('Back'),
              onPressed: () => {_selectRegion(context)},
            ),
          ),
        ],
      ));
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, Region2.id);
  }
}

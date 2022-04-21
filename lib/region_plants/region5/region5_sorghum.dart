import 'package:flutter/material.dart';
import 'package:plant_app/screens/region5/region5.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class SorghumRegion5 extends StatefulWidget {
  static const String id = 'SorghumRegion5';
  const SorghumRegion5({Key key}) : super(key: key);
  @override
  _SorghumRegion5State createState() => _SorghumRegion5State();
}

class _SorghumRegion5State extends State<SorghumRegion5> {
  bool showSpinner = false;
  // const MaizeScreenState({Key? key}) : super(key: key);

  static const String _title = 'Sorghum';

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
    Navigator.pushReplacementNamed(context, Region5.id);
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
              backgroundImage: AssetImage('assets/sorghum.jpg'),
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
                'May be planted after maize in early December',
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
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                    '''SC Smile, 
SC Sila
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
                '''Basal fertilizer
Sorghum responds well to a low application of basal fertilizer (100 to 300 kg of 7.14.7 per ha)

It should be followed with a top dressing of 100 to 200 kg per ha of 28 - 34% N fertilizer
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
                '''Sorghum is very sensitive to weed competition.
                
 Normally 2-3 hoe-weeding regimes are done.
 Use of pre-emergence herbicides like artrazine can be recommended in soils with greater than 25% clay content.
 
 Control weeds throughout, but especially in the early stages of crop growth.
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
                ''' 1. Leaf Blight.
Management and Control:
-Rotation with non-susceptible crops (non-grasses) aids in destruction of infected residue thereby reducing the level of primary infection.


2. Downey mildew 
Management and Control:
- Use of Seed Co resistant varieties is the smartest control method.


3. Smut
Management and Control:
- Use of Seed Co resistant varieties is the smartest control method.               
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
                '''Employ rain harvesting techniques (pot-holing or tied-ridging).
                
Harvest early to minimise bird damage.''',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text('Back'),
              onPressed: () => {_selectRegion(context)},
            ),
          ),
        ],
          ));
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, Region5.id);
  }
}
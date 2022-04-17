import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class PeasRegion1 extends StatefulWidget {
  static const String id = 'PeasRegion1';
  const PeasRegion1({Key key}) : super(key: key);
  @override
  _PeasRegion1State createState() => _PeasRegion1State();
}

class _PeasRegion1State extends State<PeasRegion1> {
  bool showSpinner = false;
  // const MaizeScreenState({Key? key}) : super(key: key);

  static const String _title = 'Cowpeas';

  @override
  Widget build(BuildContext context) {
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
      body: const PlantDetails(),
    );
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
              backgroundImage: AssetImage('assets/cowpeas.jpg'),
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
                '''Plant cowpeas anytime from the first rains until the end of December. 
                
In high rainfall areas, plant cowpeas late to avoid diseases when the crop reaches maturity.''',
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
              'Seed Type',
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
                    'IT18',
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
                'Cowpeas will respond to manure or low rates (100 to 200 kg per ha) of a compound fertiliser.',
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
              'Pests Control',
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
                '''Pests include Aphids, Heliothis bollworm, CMR beetle and Tip-wilter.
                 
After harvest, the seed is susceptible to bruchids, a grain borer.
 
These pests may be controlled with appropriate chemicals.
For more information on these chemicals, contact your regional farmer.''',
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
                '''Cowpeas are susceptible to a wide range of diseases especially virus diseases.  
                
The best control measure is through the use of virus-free seed produced under strict roguing production 
systems (i.e., removing and destroying any plants showing virus disease symptoms).''',
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
                '''There are two basic types of cowpeas: 
upright, bunch types, used mainly for grain production; 
and spreading types, which may be used for grain, vegetable or fodder.

Purchase fresh seed regularly to avoid build up of seed borne diseases

For more information consult your regional farmer''',
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
    Navigator.pushReplacementNamed(context, HomeScreen.id);
  }
}

import 'package:flutter/material.dart';
import 'package:plant_app/screens/region3/region3.dart';

class SunFlowerRegion3 extends StatefulWidget {
  static const String id = 'SunFlowerRegion3';
  const SunFlowerRegion3({Key key}) : super(key: key);
  @override
  _SunFlowerRegion3State createState() => _SunFlowerRegion3State();
}

class _SunFlowerRegion3State extends State<SunFlowerRegion3> {
  bool showSpinner = false;
  // const MaizeScreenState({Key? key}) : super(key: key);

  static const String _title = 'Sunflower';

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
              backgroundImage: AssetImage('assets/images/sunflower.jpg'),
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
                'It is best to grow it after winter.',
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
                '''Oil seed
Non-oil seed                
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
              'Climatic Requirements',
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
Sunflower strives well in climates ranging from arid under irrigation to temperate  
under rain fed conditions.

The oil seed crop sunflower is sensitive to frost.              
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
          // ExpansionTile(
          //   title: const Text(
          //     'Disease Control',
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.normal,
          //     ),
          //   ),
          //   trailing: Icon(
          //     _customTileExpanded
          //         ? Icons.arrow_drop_down_circle
          //         : Icons.arrow_drop_down,
          //   ),
          //   children: const <Widget>[
          //     ListTile(
          //         title: Text(
          //       'diseases',
          //       style: TextStyle(
          //         fontSize: 15,
          //       ),
          //     )),
          //   ],
          //   onExpansionChanged: (bool expanded) {
          //     setState(() => _customTileExpanded = expanded);
          //   },
          // ),
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
                'For more information contact AMA',
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
    Navigator.pushReplacementNamed(context, Region3.id);
  }
}
import 'package:flutter/material.dart';
import 'package:plant_app/screens/region5/region5.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class MilletRegion5 extends StatefulWidget {
  static const String id = 'milletscreen_region5';
  const MilletRegion5({Key key}) : super(key: key);
  @override
  _MilletScreenState createState() => _MilletScreenState();
}

class _MilletScreenState extends State<MilletRegion5> {
  bool showSpinner = false;
  // const MaizeScreenState({Key? key}) : super(key: key);

  static const String _title = 'Millet';

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
              backgroundImage: AssetImage('assets/images/millet.jpg'),
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
                    '''
The best time for planting is as soon as the first effective rains (when 
there is enough moisture in the soil for seed germination) have been received                
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
                    '''Basal Fertilizer
-Basal fertilizer application for optimal yields is 200 kg/ha.
-Basal fertilizer should always be applied before planting.

Top dressing
The generally recommended top dressing (based on AN) application rate is 150 kg/ha. 

In sandy soils, split application may be required, consult the regional farmer for instructions.             
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
- The first weeding should be done as soon as weeds start to emerge.
- Use of pre-emergence herbicides like atrazine recommended in soils with greater than 25% clay content.

- Young plants must be kept weed free for the first 45 days of growth.      
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
                    '''1. Rust
Management:
- -Spray crop with fungicides that are effective against the disease.
-Rust tolerant cultivars should be grown if available

2. Smut disease in pearl millet and finger millet.
Management: 
- Destroy affected plants by burning them or burying them outside the field.
-Grow tolerant varieties like PMV 2, PMV 3, and Okashana 1.

3. Blast
Management:
-Use disease tolerant varieties

For more information on possible diseases and their management, contact regional farmer.
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
              'General Tips',
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
The harvested heads should be dried before threshing, by exposure to the sun.

There are 2 types of millet:
1. Pearl Millet / Inyawuthi / Mhunga
2. Finger millet/Rapoko / Uphoko / Zviyo, Rukweza             
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
    Navigator.pushReplacementNamed(context, Region5.id);
  }
}

import 'package:flutter/material.dart';
import 'package:plant_app/screens/region2/region2.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class SoyaBeansRegion2 extends StatefulWidget {
  static const String id = 'SoyaBeansRegion2';
  const SoyaBeansRegion2({Key key}) : super(key: key);
  @override
  _SoyaBeansRegion2State createState() => _SoyaBeansRegion2State();
}

class _SoyaBeansRegion2State extends State<SoyaBeansRegion2> {
  bool showSpinner = false;
  // const MaizeScreenState({Key? key}) : super(key: key);

  static const String _title = 'Soya Beans';

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
              backgroundImage: AssetImage('assets/soya-beans.jpg'),
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
                'Usually planted in late November',
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
                    '''SC Serenade,
SC Safari,
SC Status,
SC Sequel,
SC Squire
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
                '''Before Planting
Apply a preplant application of 200 to 300 kg per ha of either a basal fertiliser (e.g. 7,14,7), Gypsum or Single Super Phosphate before planting

Soyabean do not need much nitrogen in the basal fertiliser, and they do not require nitrogen fertiliser top dressing.                
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
                '''
Semi-looper caterpillars
-  Insecticide spray may be required
- Caterpillars may die natural from a virus disease
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
                '''1.Frog Eye Leaf Spot
Management:
- use cultivars that are resistant to Frog Eye Leaf Spot.

2. Rust
Management:
- Use Carbendazim / Flusilazole (Punch® Xtra at 350 to 500 mL/ha) and Triadimenol (Shavit® at 500 mL/ha).                
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
Soyabean is suited to soils with  high clay content, as they do not do very well on weak sands. 
The crop is also sensitive to soil acidity.
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

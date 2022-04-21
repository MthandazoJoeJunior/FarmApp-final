import 'package:flutter/material.dart';
import 'package:plant_app/screens/region3/region3.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class GroundNutsRegion3 extends StatefulWidget {
  static const String id = 'GroundNutsRegion3';
  const GroundNutsRegion3({Key key}) : super(key: key);
  @override
  _GroundNutsRegion3State createState() => _GroundNutsRegion3State();
}

class _GroundNutsRegion3State extends State<GroundNutsRegion3> {
  bool showSpinner = false;
  // const MaizeScreenState({Key? key}) : super(key: key);

  static const String _title = 'Groundnuts';

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
    Navigator.pushReplacementNamed(context, Region3.id);
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
              backgroundImage: AssetImage('assets/images/groundnuts.jpg'),
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
                    'Should be planted as early as possible, at least before the end of November.',
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
                    '''Nyanda, 
Mwenje
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
                    '''Basal fertiliser 
- Groundnuts should be grown in rotation with cereals (e.g., maize and sorghum), which have been well fertilised.
- where the soil is known to be infertile or deficient in some nutrients, manure or a low rate (150 to 300 kg/ha) of a 
basal fertiliser (e.g. 7,14,7 or 5,18,10) or Single Super Phosphate may be applied.


Top dressing. 
Groundnuts have a high requirement for calcium, especially during the pegging stage.
Calcium may be supplied with Gypsum (calcium sulphate) at a rate of 250 kg per ha 
broadcast over the plants at flowering (7 to 8 weeks after planting).
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
                    '''Should be done at early stages of crop growth. 
Weeding with hoes is possible up to the flowering stage. 
Thereafter, weeds must be pulled out by hand to avoid disturbance of the pegs. ''',
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
                    ''' Groundnuts are susceptible to a number of leaf diseases (e.g, Cercospora and Phoma)
                
A single spray of a fungicide, for example, Mancozeb (Dithane M45) or Chlorothalonil (Bravo) at flowering or early pegging may be beneficial''',
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
                    '''Groundnuts may be divided into three types, 
according to the time taken to maturity early, medium and late maturing. 
Early maturing groundnuts have a bunch growth habit, while medium and late maturing groundnuts have a spreading growth habit.''',
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

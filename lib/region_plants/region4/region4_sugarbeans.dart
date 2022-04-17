import 'package:flutter/material.dart';
import 'package:plant_app/screens/region4/region4.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class SugarBeansRegion4 extends StatefulWidget {
  static const String id = 'SugarBeansRegion4';
  const SugarBeansRegion4({Key key}) : super(key: key);
  @override
  _SugarBeansRegion4State createState() => _SugarBeansRegion4State();
}

class _SugarBeansRegion4State extends State<SugarBeansRegion4> {
  bool showSpinner = false;

  static const String _title = 'Sugar Beans';

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
              backgroundImage: AssetImage('assets/sugarbeans.jpg'),
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
                ' Planting dates range from October to mid-January',
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
                ''' Basal dressing :
Compound D (200 to 300kg/Ha), Cereal Blend (150-250kg/Ha), 
Double D (100-150kg/Ha), SSP (225kg/Ha).

Top dressing:
150-200kg/Ha of AN is enough to avoid rank growth.

Apply top dressing at 2-6 weeks after emergence but before flowering after the rains/irrigation when the soil is moist
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
                '''Always spray pre-emergence herbicides and pesticides (against early pests such as cutworm), 
soon after planting (within 2 days) when the soil is moist''',
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
                '''1.Bean Common Mosaic Virus
Symptoms:
-Curled and malformed leaves that have alternate dark green and light green areas. 
Management:
-Use fresh seed avoid susceptible cultivars.

2.Common Blight
Symptoms:
– large necrotic lesions surrounded by bright yellow chlorotic areas. 
Management:
- Avoid excessive irrigation.

3.Fungal diseases
Symptoms:
- Sclerotinias clerotiorum,Powdery mildew, cercospora leaf spot, rust.
Management:
- Avoid over head irrigation and put a fungicide at first sign of disease.            
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
                '''- Grow on wide range of soils, but pH of between 5.3 and 6.5 is ideal.
                
- Requires a well prepared soil to a depth of 60-90cm

- Best grown on heavier and sandy loam soils with a clay content of >20%''',
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
    Navigator.pushReplacementNamed(context, Region4.id);
  }
}

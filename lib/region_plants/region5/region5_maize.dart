import 'package:flutter/material.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class MaizeRegion5 extends StatefulWidget {
  static const String id = 'MaizeRegion5_region5';
  const MaizeRegion5({Key key}) : super(key: key);
  @override
  _MaizeRegion4State createState() => _MaizeRegion4State();
}

class _MaizeRegion4State extends State<MaizeRegion5> {
  bool showSpinner = false;
  // const MaizeRegion4State({Key? key}) : super(key: key);

  static const String _title = 'Maize';

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
              backgroundImage: AssetImage('assets/maize.jpg'),
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
                    '''October plantings - Highest yields when sustained with irrigation 
                
November planting - onset of the first rains, safe under dry land conditions.

December planting - low yields, and very risky, crop may suffer from drought stress.''',
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
                    ''' SC 513, 
SC 533, 
SC403, 
SC 419 (coming soon), 
SC 301

For more information visit: https://www.seedcogroup.com/zw/farmer-s-hub/maize/region-5''',
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
                    ''' For region 5 apply -
                
Basal fertilizer (e.g. 7:14:7) :
Yield potential of maize:  < 3 t/ha  - use (0 to 150kg/ha)
Yield potential of maize: 3 to 5 t/ha  - use (100 to 250kg/ha)

Top dressing fertilizer (high N) e.g ammonium nitrate (34.5% N) :
Yield potential of maize: < 3 t/ha  - use (0 to 150kg/ha)
Yield potential of maize: 3 to 5 t/ha  - use (100 to 250kg/ha)

Follow this link to see video of application - https://youtu.be/WkbPCUo60EQ
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
                    '''The crop must have a good head start ahead of weeds.               
The crop must be WEED FREE for the FIRST 10 WEEKS after crop emergence.

If you fail to control weeds in maize in the first 5 weeks of the crop cycle, then 50% of the yields will be lost.''',
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
                    '''1. Grey Leaf Spot.
Causes: 
Fungus- Cercospora zea-maydis
Symptoms: 
Lesions are pale brown or grey to tan, long, narrow and rectangular, being characteristically restricted by veins
Management: 
-Clean ploughing with crop rotation will reduce disease severity  
-Apply foliar fungicide sprays e.g Tilt, Amistar, Bravo, Duett and Score
              
2. Phaesosphaeria Leaf Spot.
Causes:
Fungus- Phaeosphaeria maydis and Phoma sorghina
Symptoms:
i. Circular or oval necrotic lesions, bleached, and dried with dark brown margins, similar to
herbicide damage
ii. Lesions can coalesce and blight the entire leaf, black fungi fruiting bodies develop within lesions
Management and Control:
- Destroy infected crop residues to reduce disease inoculum
- Apply foliar fungicide sprays e.g Abacus, Amistar, Bravo, Duett and Score                  
              
3. Northern Corn Leaf Blight (NCL/Ht)   
Causes: 
Fungus- Helminthosporium turcicum (Syn. Exserohilum turcicum) 
Symptoms:
1. Long, elliptical, grayish-green or tan lesions ranging from 2.5 to 15cm in length develop first on the lower leaves
2. Severe infection causes premature death and gray appearance that resembles frost or drought injury
Management and Control:
- Clean ploughing, crop rotation, or both may reduce early season inoculum levels. 
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
                    '''To increase yield make sure you plant the seed sustainable for your region.
You can contact your regional farmer ( umlimisi / mudhumeni ) for assistance. ''',
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
    Navigator.pushReplacementNamed(context, FormPage.id);
  }
}

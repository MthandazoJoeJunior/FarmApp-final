import 'package:flutter/material.dart';
import 'package:plant_app/select_region/selectRegion.dart';


class MaizeScreen extends StatefulWidget {
  static const String id = 'maizescreen';
  const MaizeScreen({Key key}) : super(key: key);
  @override
  _MaizeScreenState createState() => _MaizeScreenState();
}

  class _MaizeScreenState extends State<MaizeScreen> {
  bool showSpinner = false;
 // const MaizeScreenState({Key? key}) : super(key: key);

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
            )
        ),
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
        child:  CircleAvatar(
          radius: 110,
          backgroundImage: AssetImage('assets/maize.jpg'),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
        ),
        ExpansionTile(
          title: const Text(
              'Planting Dates',
            style:  TextStyle(
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
            ListTile(title: Text(
                ' ' ' Highest yields are obtained with October plantings, but these can usually only be sustained with irrigation '
                    'November planting with the onset of the first rains is the safest under dry land conditions.'
                    ' Planting in December will produce low yields, and is very risky, because the crop may suffer from drought stress at the end of the season''',
              style:  TextStyle(
                fontSize: 15,
              ),
            )
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        ExpansionTile(
          title: const Text(
              'Fertilization',
            style:  TextStyle(
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
            ListTile(title: Text(
              '''The fertiliser requirements of maize depends on the soil fertility and yield target. Infertile soils 
                  require more fertiliser, as does a higher yield target.
                  The two most important nutrients for maize are nitrogen and phosphorous.
                  The first consideration for fertilising maize is manure.
                  You may be guided by your regional farmer on the type of inorganic fertilizer to use.''',
              style:  TextStyle(
                fontSize: 15,
              ),
            )
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        ExpansionTile(
          title: const Text(
              'Weed Control',
            style:  TextStyle(
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
            ListTile(title: Text(
              '''The crop must have a good head start ahead of weeds.
                  The crop must be weed free for the first 10 weeks of the crop cycle after crop emergence.
                  If you fail to control weeds in maize in the first 5 weeks of the crop cycle, then 50% of the yields will be lost.''',
              style:  TextStyle(
                fontSize: 15,
              ),
            )
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        ExpansionTile(
          title: const Text(
              'Disease Control',
            style:  TextStyle(
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
            ListTile(title: Text(
              '''1. Grey Leaf Spot.
              Causes: Fungus: Cercospora zea-maydis
              Symptoms: Lesions are pale brown or grey to tan, long, narrow and rectangular, being characteristically restricted by veins
              Management: Clean ploughing with crop rotation will reduce disease severity and apply foliar fungicide sprays e.g Tilt, Amistar, Bravo, Duett and Score''',
              style:  TextStyle(
                fontSize: 15,
              ),
            )
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        ExpansionTile(
          title: const Text(
              'General tips',
            style:  TextStyle(
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
            ListTile(title: Text(
              'Tips',
              style:  TextStyle(
                fontSize: 15,
              ),
            )
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            child: const Text('Back'),
            onPressed: () =>{
              _selectRegion(context)
            },
          ),
        ),
      ],
    ));
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, FormPage.id);
  }
}

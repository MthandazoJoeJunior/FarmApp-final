import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/select_region/selectRegion.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpSupport extends StatefulWidget {
  static const String id = 'helpsupport';
  const HelpSupport({Key key}) : super(key: key);

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: IconButton(
            onPressed: () => { _selectRegion(context)},
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.green,
          title: const Text(
            'Help & Support',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      body: const HelpSupportDetails(),
    );
  }
}

_sendingMails() async {
  const url = 'mailto:nicolafaith0.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class HelpSupportDetails extends StatefulWidget {
  const HelpSupportDetails({Key key}) : super(key: key);

  @override
  State<HelpSupportDetails> createState() => _HelpSupportDetailsState();
}

class _HelpSupportDetailsState extends State<HelpSupportDetails> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            ListTile(
              //leading: Icon(Icons.call),
              title: Center(
                child: const Text(
                  'Frequently Asked Questions',
                  style:  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              subtitle: const Text('Do you have any questions for Easy Farm? Use the answers below.'),
            ),
            SizedBox(
              height: 15,
            ),
            ExpansionTile(
              title: const Text(
                'Question 1',
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
                  'Maize is best planted in December',
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
                'Question 2',
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
                  'type of fertilizer',
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
                'Question 3',
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
                  'weeds',
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
            SizedBox(
              height: 25,
            ),
            ListTile(
              //leading: Icon(Icons.call),
              title: Center(
                child: const Text(
                  'Couldnt get your answer?',
                  style:  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              subtitle: Center(child: const Text('Submit your query below.')),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Contact',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Query',
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: const Text('Submit'),
                onPressed: () =>{
                  _sendingMails()
                },
              ),
            ),
        ]
      )
  );
}
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, FormPage.id);
  }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/select_region/selectRegion.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatefulWidget {
  static const String id = 'contacts';
  const Contacts({Key key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
            'Contact Us',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ), body: const ContactDetails(),
    );
  }
}
_sendingMails() async {
  const url = 'mailto:nicolafaith0@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCaller() async {
  const url = "tel:+263 777 916 312";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCallerSeedco() async {
  const url = "tel:+263 242 308881";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCallerFC() async {
  const url = "tel:+263 292 882871";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCallerAMA() async {
  const url = "tel:+263 242 308 662";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  class ContactDetails extends StatefulWidget {
  const ContactDetails({Key key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
  }

  class _ContactDetailsState extends State<ContactDetails> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Container(
          child:  CircleAvatar(
            radius: 110,
            backgroundImage: AssetImage('assets/images/helpdesk.png'),
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
          ),
        ),
        ListTile(
          leading: Icon(Icons.call),
          onTap: () {
            _launchCaller();
            // Navigator.pop(context);
          },
          title: const Text(
          'Call Us',
          style:  TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          ),
          ),
          subtitle: const Text('+263 777 916 312'),
        ),
        ListTile(
          leading: Icon(Icons.email),
          onTap: () {
            _sendingMails();
            // Navigator.pop(context);
          },
          title: const Text(
            'Email Us',
            style:  TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: const Text('nicolafaith0@gmail.com'),
        ),
        SizedBox(
          height: 25,
        ),
        ListTile(
          leading: Icon(Icons.call),
          onTap: () {
            _launchCallerSeedco();
            // Navigator.pop(context);
          },
          title: const Text(
            'Call SeedCo',
            style:  TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: const Text('+263 242 308881'),
        ),
        ListTile(
          leading: Icon(Icons.call),
          onTap: () {
            _launchCallerFC();
            // Navigator.pop(context);
          },
          title: const Text(
            'Call Farm and City',
            style:  TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: const Text('+263 292 882871'),
        ),
        ListTile(
          leading: Icon(Icons.call),
          onTap: () {
            _launchCallerAMA();
            // Navigator.pop(context);
          },
          title: const Text(
            'Call AMA',
            style:  TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: const Text('+263 242 308662'),
        ),
      ]
    )
  );
}


  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, FormPage.id);
  }


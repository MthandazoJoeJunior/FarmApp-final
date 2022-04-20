import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/select_region/selectRegion.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'region_1';
  static const String _title = 'Easy Farm';

  Future<bool> _onWillPop(context) async {
    return (_selectRegion(context));
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () => _onWillPop(context),
    child: new Scaffold(
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
      body: Body(),
    ),
    );

  }
  _selectRegion(context) async {
    Navigator.pushReplacementNamed(context, FormPage.id);
  }


  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

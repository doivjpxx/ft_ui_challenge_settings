import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySetting1 extends StatefulWidget {
  @override
  _MySetting1State createState() => _MySetting1State();
}

class _MySetting1State extends State<MySetting1> {
  bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: _getBrightness(),
        title: Text(
          'Setting',
          style: TextStyle(color: _dark ? Colors.white : Colors.black),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
        backgroundColor: _dark ? null : Colors.grey.shade200,
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.moon),
            onPressed: () {
              setState(() {
                _dark = !_dark;
              });
            },
          )
        ],
      ),
    );
  }
}

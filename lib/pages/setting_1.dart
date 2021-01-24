import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ft_ui_challenge_settings/constants/assets.dart';

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
    return Theme(
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        appBar: AppBar(
          brightness: _getBrightness(),
          title: Text(
            'Setting',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          elevation: 0.0,
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
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
        body: Stack(fit: StackFit.expand, children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.purple,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(avatars[0]),
                    ),
                    title: Text('John Doe',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.lock_outline,
                          color: Colors.purple,
                        ),
                        title: Text("Change Password"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.language,
                          color: Colors.purple,
                        ),
                        title: Text('Change Language'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.purple,
                        ),
                        title: Text('Change Language'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Notification Settings",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                SwitchListTile(
                  activeColor: Colors.purple,
                  contentPadding: const EdgeInsets.all(0),
                  onChanged: (val) {},
                  value: true,
                  title: Text('Received notification'),
                ),
                SwitchListTile(
                  value: false,
                  contentPadding: const EdgeInsets.all(0),
                  title: Text('Received letter'),
                  onChanged: null,
                ),
                SwitchListTile(
                    activeColor: Colors.purple,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    onChanged: (value) {},
                    title: Text('App update')),
              ],
            ),
          ),
          Positioned(bottom: -10, left: -10, child: _buildTurnOffButton())
        ]),
      ),
    );
  }

  Container _buildTurnOffButton() {
    return Container(
      height: 80,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.purple,
        shape: BoxShape.circle,
      ),
      child: FaIcon(
        FontAwesomeIcons.powerOff,
        color: Colors.white,
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_settings/constants/assets.dart';

class MySetting3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Account'.toUpperCase(),
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:
                        CircleAvatar(backgroundImage: NetworkImage(images[4])),
                    title: Text('Victoria Jack'),
                    onTap: () {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    value: true,
                    onChanged: (val) {},
                    title: Text('Private account'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Push notification'.toUpperCase(),
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    value: true,
                    onChanged: (val) {},
                    title: Text('Received notification'),
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    value: false,
                    onChanged: null,
                    title: Text('Received newletter'),
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    value: true,
                    onChanged: (val) {},
                    title: Text('Received offer notification'),
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    value: true,
                    onChanged: (val) {},
                    title: Text('App update'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {},
              ),
            )
          ],
        ),
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
      color: Colors.grey.shade300,
    );
  }
}

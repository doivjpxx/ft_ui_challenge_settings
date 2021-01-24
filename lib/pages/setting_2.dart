import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_settings/constants/assets.dart';

const TextStyle whiteBoldText = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final TextStyle greyTExt = TextStyle(
  color: Colors.grey.shade400,
);

class MySetting2 extends StatelessWidget {
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Theme(
          data: Theme.of(context).copyWith(
            brightness: Brightness.dark,
            primaryColor: Colors.purple,
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(avatars[1]),
                                    fit: BoxFit.cover))),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Jane Cole',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold)),
                            Text('Nepal')
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    ListTile(
                      title: Text(
                        'Languages',
                        style: whiteBoldText,
                      ),
                      subtitle: Text('English - US', style: greyTExt),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey.shade400,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Profile settings',
                        style: whiteBoldText,
                      ),
                      subtitle: Text('Jane Cole', style: greyTExt),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey.shade400,
                      ),
                      onTap: () {},
                    ),
                    SwitchListTile(
                      title: Text(
                        "Email Notifications",
                        style: whiteBoldText,
                      ),
                      subtitle: Text(
                        "On",
                        style: greyTExt,
                      ),
                      value: true,
                      onChanged: (val) {},
                    ),
                    SwitchListTile(
                      title: Text(
                        "Push Notifications",
                        style: whiteBoldText,
                      ),
                      subtitle: Text(
                        "Off",
                        style: greyTExt,
                      ),
                      value: false,
                      onChanged: (val) {},
                    ),
                    ListTile(
                      title: Text('Logout', style: whiteBoldText),
                      onTap: () {},
                    )
                  ],
                )),
          ),
        ));
  }
}

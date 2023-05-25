import 'package:flutter/material.dart';

import '../Shared/app_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is Profile Page',
          style: appStyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}

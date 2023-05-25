import 'package:flutter/material.dart';

import '../Shared/app_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is SearchPage',
          style: appStyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}

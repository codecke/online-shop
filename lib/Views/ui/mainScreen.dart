// ignore_for_file: must_be_immutable, unused_import

import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:online_shop/Controllers/main_screen_provider.dart';
import 'package:online_shop/Views/Shared/app_style.dart';
import 'package:online_shop/Views/ui/cartpage.dart';
import 'package:online_shop/Views/ui/profilePage.dart';
import 'package:online_shop/Views/ui/searchPage.dart';
import 'package:provider/provider.dart';

import '../Shared/bottom_nav.dart';
import 'homePage.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    Cartpage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNav(),
        );
      },
    );
  }
}

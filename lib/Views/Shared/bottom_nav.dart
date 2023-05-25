import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:online_shop/Controllers/main_screen_provider.dart';
import 'package:provider/provider.dart';

import 'bottom_nav_widget.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 0;
                  },
                  iconData: mainScreenNotifier.pageIndex == 0
                      ? CommunityMaterialIcons.home
                      : CommunityMaterialIcons.home_outline,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                  iconData: mainScreenNotifier.pageIndex == 1
                      ? Ionicons.search
                      : Ionicons.search_outline,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                  iconData: mainScreenNotifier.pageIndex == 2
                      ? Ionicons.add_circle_outline
                      : Ionicons.add,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                  iconData: mainScreenNotifier.pageIndex == 3
                      ? Ionicons.cart
                      : Ionicons.cart_outline,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 4;
                  },
                  iconData: mainScreenNotifier.pageIndex == 4
                      ? Ionicons.person
                      : Ionicons.person_outline,
                ),
              ],
            ),
          ),
        ),
      );
      ;
    });
  }
}

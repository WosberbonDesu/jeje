import 'package:flutter/material.dart';

import '../models/data/drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerItems(context),
          ],
        ),
      );

  Widget buildDrawerItems(BuildContext context) => Column(
      children: DrawerItems.all
          .map((item) => ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                onTap: () {},
                title: Text(
                  item.title,
                  style: TextStyle(color: Colors.white),
                ),
              ))
          .toList());
}

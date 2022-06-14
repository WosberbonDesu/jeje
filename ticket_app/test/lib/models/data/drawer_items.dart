import 'package:flutter/material.dart';

import '../drawer_item.dart';

class DrawerItems {
  static const home = DrawerItem(title: "Home", icon: Icons.home);
  static const settings = DrawerItem(title: "Settings", icon: Icons.settings);
  static const myticket =
      DrawerItem(title: "My Ticket", icon: Icons.airplane_ticket);
  static const profile = DrawerItem(title: "Profile", icon: Icons.face);
  static const logout = DrawerItem(title: "Logout", icon: Icons.logout);

  static final List<DrawerItem> all = [
    home,
    settings,
    myticket,
    profile,
    logout
  ];
}

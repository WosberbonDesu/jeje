import 'package:flutter/material.dart';

import '../../components/drawer_widget.dart';
import '../main_home_page.dart';

class ScratPage extends StatefulWidget {
  ScratPage({Key? key}) : super(key: key);

  @override
  State<ScratPage> createState() => _MainPageState();
}

class _MainPageState extends State<ScratPage> {
  late double xOffSet;
  late double yOffSet;
  late double scaleFactory;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffSet = 0;
        yOffSet = 0;
        scaleFactory = 1;
      });

  void openDrawer() => setState(() {
        xOffSet = 230;
        yOffSet = 150;
        scaleFactory = 0.6;
      });

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(children: [buildDrawer(), buildPage()]),
      );
  Widget buildDrawer() => SafeArea(child: DrawerWidget());
  Widget buildPage() {
    return Container(
        transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
          ..scale(scaleFactory),
        child: MainHomePage());
  }
}

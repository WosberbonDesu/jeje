import 'package:flutter/material.dart';

import 'HomeComponents/CategoriesSection.dart';
import 'HomeComponents/DefaultTitleSection.dart';
import 'HomeComponents/EventCard.dart';
import 'HomeComponents/HeaderSection.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDF1FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderSection(),
                  SizedBox(
                    height: 50,
                  ),
                  CategoriesSection(),
                  SizedBox(
                    height: 5,
                  ),
                  DefaultTitleSection(
                    title: "Recommended Event",
                    press: () {},
                  ),
                  EventCard(),
                  DefaultTitleSection(
                    title: "Popular Events",
                    press: () {},
                  ),
                  EventCard(),
                ],
              ),
              Positioned(
                top: 235,
                left: 10,
                right: 10,
                child: Container(
                  height: 80,
                  margin: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Color(0xffF6F7F8),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 8,
                            offset: Offset(0, -1))
                      ]),
                ),
              ),
              EventStatusCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class EventStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 230,
      left: 0,
      right: 0,
      child: Container(
        height: 80,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 8,
                offset: Offset(0, -1),
              ),
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "You have",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  TextSpan(
                    text: " 03 ",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: "events in \nthis week.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Check Status",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../components/drawerpage/custom_drawer.dart';
import '../models/data/data_model.dart';
import '../models/speciality.dart';
import 'LogiinScreens/home_festival.dart';
import 'booking/components/drawer_menu_widget.dart';
import 'doc_info.dart';
import 'event_app/Screens/event_screen_more.dart';
import 'movie_home_screen.dart';

String selectedCategorie = "Adults";

class MainHomePage extends StatefulWidget {
  const MainHomePage({
    Key? key,
  }) : super(key: key);
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List<String> categories = ["Today", "1W", "1M", "1Y"];
  late KFDrawerController _drawerController;
  List<SpecialityModel>? specialities;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    specialities = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Ticket',
                  style:
                      GoogleFonts.lobster(fontSize: 30, color: Colors.black)),
              TextSpan(
                  text: '4', style: TextStyle(color: Colors.red, fontSize: 40)),
              TextSpan(
                  text: "Us",
                  style: GoogleFonts.lobster(fontSize: 30, color: Colors.black))
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF2F8F9D),
            Color(0xFF5584AC),
            Color(0xFF22577E)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategorieTile(
                        categorie: categories[index],
                        isSelected: selectedCategorie == categories[index],
                        context: this,
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: specialities!.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SpecialistTile(
                        imgAssetPath: specialities![index].imgAssetPath!,
                        speciality: specialities![index].speciality!,
                        noOfDoctors: specialities![index].noOfDoctors!,
                        backColor: specialities![index].backgroundColor!,
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Coming next week",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              DoctorsTile()
            ],
          ),
        ),
      ),
    );
  }
}

class CategorieTile extends StatefulWidget {
  final String? categorie;
  final bool? isSelected;
  _MainHomePageState? context;
  CategorieTile({this.categorie, this.isSelected, this.context});

  @override
  _CategorieTileState createState() => _CategorieTileState();
}

class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.context!.setState(() {
          selectedCategorie = widget.categorie!;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
            color: widget.isSelected! ? Color(0xffF05454) : Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          widget.categorie!,
          style: TextStyle(
              color:
                  widget.isSelected! ? Color(0xff222831) : Color(0xffA1A1A1)),
        ),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {
  final String? imgAssetPath;
  final String? speciality;
  final int? noOfDoctors;
  final Color? backColor;
  SpecialistTile(
      {@required this.imgAssetPath,
      @required this.speciality,
      @required this.noOfDoctors,
      @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (noOfDoctors == 10) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Homevent()));
        }
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(24)),
        padding: EdgeInsets.only(top: 16, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              speciality!,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "$noOfDoctors ${speciality}",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  imgAssetPath!,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorsInfo()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFEEE0), borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/movie-posters/img-matrix.jpg",
              height: 50,
            ),
            SizedBox(
              width: 17,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Stefeni Albert",
                  style: TextStyle(color: Color(0xff1687A7), fontSize: 19),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Drama Movie",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(
                  color: Color(0xff1687A7),
                  borderRadius: BorderRadius.circular(13)),
              child: Text(
                "Examine",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// https://dev.to/bhaskardutta/building-with-flutter-and-metamask-8h5
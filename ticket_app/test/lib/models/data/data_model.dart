import 'package:flutter/cupertino.dart';

import '../speciality.dart';

List<SpecialityModel> getSpeciality() {
  List<SpecialityModel> specialities = [];
  SpecialityModel specialityModel = new SpecialityModel();

  //1
  specialityModel.noOfDoctors = 10;
  specialityModel.speciality = "Movies";
  specialityModel.imgAssetPath = "assets/movie-posters/img-matrix.jpg";
  specialityModel.backgroundColor = Color(0xff0F4C75);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //2
  specialityModel.noOfDoctors = 17;
  specialityModel.speciality = "Concert";
  specialityModel.imgAssetPath = "assets/movie-posters/img-sonic.jpg";
  specialityModel.backgroundColor = Color(0xff3282B8);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //3
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Sport";
  specialityModel.imgAssetPath = "assets/movie-posters/img-eternals.jpg";
  specialityModel.backgroundColor = Color(0xff1B262C);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  return specialities;
}

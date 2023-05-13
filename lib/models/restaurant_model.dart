import 'package:flutter/material.dart';

import 'food_model.dart';

class RestaurantModel {
  String? id;
  String? restName;
  String? restImg;
  String? address;
  num? delieveryTime;
  num? distance;
  List<FoodModel>? restFood;
  bool? isFav;

  RestaurantModel(
      {required this.id,
      required this.restName,
      required this.restImg,
      required this.address,
      required this.delieveryTime,
      required this.distance,
      required this.restFood,
      required this.isFav});

  RestaurantModel.fromjson(Map<dynamic, dynamic> json) {
    this.id = json['id'];
  }
}

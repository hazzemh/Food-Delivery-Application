import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/controllers/restaurant_states.dart';
import 'package:food_delivery/models/restaurant_model.dart';
import 'dart:convert';

final baseUrl = 'https://banana-362519-default-rtdb.firebaseio.com/';

class RestaurantCubit extends Cubit<RestaurantStates> {
  RestaurantCubit():super(InitialState());

  List<RestaurantModel> _allRestaurants = [];
  List<RestaurantModel> get allRestaurants => _allRestaurants;

  Future<void> getRestaurants() async {
    emit(RestLoading());
    http.get(Uri.parse('$baseUrl restaurant.json')).then((value) => null);
    try {
      http.Response _res =
          await http.get(Uri.parse('$baseUrl restaurant.json'));
      Map _data = json.decode(_res.body);
      _data.forEach((key, value) {
        _allRestaurants.add(RestaurantModel(
            id: key,
            restName: value['restName'],
            restImg: value['restImg'],
            address: value['address'],
            delieveryTime: value['delieveryTime'],
            distance: 0.0,
            restFood: [],
            isFav: false));
      });
      emit(RestLoadingFinished());
    } catch (e) {
      emit(RestLoadingError());
    }
  }
}

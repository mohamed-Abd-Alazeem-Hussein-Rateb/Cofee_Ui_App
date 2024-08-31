import 'dart:convert';

import 'package:flutter_application_1/models/coffee_modle.dart';
import 'package:http/http.dart'as http;

class CoffeeServices {

Future<List<CoffeeModle>> getAllCoffees() async {
  try {
    http.Response response = await http.get(Uri.parse('https://api.sampleapis.com/coffee/hot'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      List<CoffeeModle> coffees = [];
      for (var item in data) {
        coffees.add(CoffeeModle.fromJson(item));
      }
       print('coffees ***** $coffees');
      return coffees;
    } else {
      throw Exception('Failed to load coffees');
    }
  } catch (e) {
    throw Exception('Failed to load coffees: $e');
  }
}
}
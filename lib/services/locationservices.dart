import 'dart:convert';

import 'package:barat/Models/location_model.dart';
import 'package:barat/services/utilities/app_url.dart';
import 'package:http/http.dart' as http;

class LocationServices {
  Future<LocationModel> fetchLocationArea() async {
    final response = await http.get(Uri.parse(AppUrl.locationGetAreas));
    print(response);
    if (response.statusCode == 400) {
      var data = await jsonDecode(response.body);
      // print(data['data'][0]['areaName']);
      return LocationModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }
}

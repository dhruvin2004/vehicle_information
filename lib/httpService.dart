import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'modalclass.dart';

class HttpService{

  Future getVehicleData(String Vehicle) async {
    var url = Uri.parse("https://androoceans.com/vehical-info2");
    var res = await http.post(url,body: {
      'vehical_number': 'gj05gp4425',
    },headers: {'AuthorizationKey':'abcd'});
    if(res.statusCode == 200){
      VehicleData data = jsonDecode(res.body);
      List vehicle = data.date as List;
      print(vehicle);
      return vehicle;
    } else
      {
        return print(res.statusCode);
      }
  }
}
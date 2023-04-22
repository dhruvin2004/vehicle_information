import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:whatsapp_sticker_app/httpService.dart';

import 'modalclass.dart';



class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  HttpService httpService = HttpService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // httpService.getVehicleData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle Infromation"),),
      body: ListView(
        children: [

        ],
      ) ,
    );
  }


}

// To parse this JSON data, do
//
//     final vehicleData = vehicleDataFromJson(jsonString);

import 'dart:convert';

VehicleData vehicleDataFromJson(String str) => VehicleData.fromJson(json.decode(str));

String vehicleDataToJson(VehicleData data) => json.encode(data.toJson());

class VehicleData {
  VehicleData({
    this.status,
    this.message,
    this.date,
  });

  bool? status;
  String? message;
  Date? date;

  factory VehicleData.fromJson(Map<String, dynamic> json) => VehicleData(
    status: json["status"],
    message: json["message"],
    date: json["date"] == null ? null : Date.fromJson(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "date": date?.toJson(),
  };
}

class Date {
  Date({
    this.id,
    this.status,
    this.datafrom,
    this.rcOwnerName,
    this.rcRegnNo,
    this.rcMakerDesc,
    this.rcMakerModel,
    this.rcRegnDt,
    this.rcFuelDesc,
    this.rcVhClassDesc,
    this.rcRegisteredAt,
    this.rcEngNo,
    this.rcChasiNo,
    this.rcInsuranceUpto,
    this.rcFitUpto,
    this.rcNormsDesc,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  String? status;
  String? datafrom;
  String? rcOwnerName;
  String? rcRegnNo;
  String? rcMakerDesc;
  String? rcMakerModel;
  String? rcRegnDt;
  String? rcFuelDesc;
  String? rcVhClassDesc;
  String? rcRegisteredAt;
  String? rcEngNo;
  String? rcChasiNo;
  String? rcInsuranceUpto;
  String? rcFitUpto;
  String? rcNormsDesc;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory Date.fromJson(Map<String, dynamic> json) => Date(
    id: json["id"],
    status: json["status"],
    datafrom: json["datafrom"],
    rcOwnerName: json["rc_owner_name"],
    rcRegnNo: json["rc_regn_no"],
    rcMakerDesc: json["rc_maker_desc"],
    rcMakerModel: json["rc_maker_model"],
    rcRegnDt: json["rc_regn_dt"],
    rcFuelDesc: json["rc_fuel_desc"],
    rcVhClassDesc: json["rc_vh_class_desc"],
    rcRegisteredAt: json["rc_registered_at"],
    rcEngNo: json["rc_eng_no"],
    rcChasiNo: json["rc_chasi_no"],
    rcInsuranceUpto: json["rc_insurance_upto"],
    rcFitUpto: json["rc_fit_upto"],
    rcNormsDesc: json["rc_norms_desc"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "status": status,
    "datafrom": datafrom,
    "rc_owner_name": rcOwnerName,
    "rc_regn_no": rcRegnNo,
    "rc_maker_desc": rcMakerDesc,
    "rc_maker_model": rcMakerModel,
    "rc_regn_dt": rcRegnDt,
    "rc_fuel_desc": rcFuelDesc,
    "rc_vh_class_desc": rcVhClassDesc,
    "rc_registered_at": rcRegisteredAt,
    "rc_eng_no": rcEngNo,
    "rc_chasi_no": rcChasiNo,
    "rc_insurance_upto": rcInsuranceUpto,
    "rc_fit_upto": rcFitUpto,
    "rc_norms_desc": rcNormsDesc,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

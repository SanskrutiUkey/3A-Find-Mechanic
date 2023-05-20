import 'dart:convert';

Mechanic mechanicFromJson(String str) => Mechanic.fromJson(json.decode(str));

String mechanicToJson(Mechanic data) => json.encode(data.toJson());

class Mechanic {
  String id;
  String nameofgarage;
  String name;
  String contact;
  String address;
  String pinCode;

  Mechanic({
    required this.id,
    required this.nameofgarage,
    required this.name,
    required this.contact,
    required this.address,
    required this.pinCode,
  });

  factory Mechanic.fromJson(Map<String, dynamic> json) => Mechanic(
    id: json["id"],
    nameofgarage: json["nameofgarage"],
    name: json["name"],
    contact: json["contact"],
    address: json["address"],
    pinCode: json["pinCode"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nameofgarage": nameofgarage,
    "name": name,
    "contact": contact,
    "address": address,
    "pinCode": pinCode,
  };
}

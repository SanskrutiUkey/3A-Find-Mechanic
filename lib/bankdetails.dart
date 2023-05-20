import 'dart:convert';

Bankdetails bankdetailsFromJson(String str) => Bankdetails.fromJson(json.decode(str));

String bankdetailsToJson(Bankdetails data) => json.encode(data.toJson());

class Bankdetails {
  String nameOfBank;
  String branchName;
  String accountNo;
  String ifscCode;

  Bankdetails({
    required this.nameOfBank,
    required this.branchName,
    required this.accountNo,
    required this.ifscCode,
  });

  factory Bankdetails.fromJson(Map<String, dynamic> json) => Bankdetails(
    nameOfBank: json["nameOfBank"],
    branchName: json["branchName"],
    accountNo: json["accountNo"],
    ifscCode: json["ifscCode"],
  );

  Map<String, dynamic> toJson() => {
    "nameOfBank": nameOfBank,
    "branchName": branchName,
    "accountNo": accountNo,
    "ifscCode": ifscCode,
  };
}

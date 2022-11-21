import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'discount_code.dart';

class Customer {
  String? objectId;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? verificationCode;
  DiscountCode? discountCode;
  DateTime? createdAt;
  DateTime? updatedAt;

  Customer({
    this.objectId,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.verificationCode,
    this.discountCode,
    this.createdAt,
    this.updatedAt,
  });

  factory Customer.fromJson(ParseObject json) => Customer(
        objectId: json["objectId"] as String,
        firstName: json["firstName"] as String,
        lastName: json["lastName"] as String,
        phoneNumber: json["phoneNumber"] as String,
        verificationCode: json["verificationCode"] as String,
        discountCode: json["discountCode"] != null ? DiscountCode.fromJson(json["discountCode"]) : null,
        createdAt: json["createdAt"] as DateTime,
        updatedAt: json["updatedAt"] as DateTime,
      );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "verificationCode": verificationCode,
        "discountCode": discountCode,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

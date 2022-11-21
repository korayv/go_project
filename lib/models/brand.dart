import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Brand {
  String? objectId;
  String? name;
  String? logo;
  String? address;
  String? branch;
  String? phoneNumber;
  DateTime? createdAt;
  DateTime? updatedAt;

  Brand({
    this.objectId,
    this.name,
    this.logo,
    this.address,
    this.branch,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  factory Brand.fromJson(ParseObject json) => Brand(
        objectId: json["objectId"] as String,
        name: json["name"] as String,
        logo: json["logo"] as String,
        address: json["address"] as String,
        branch: json["branch"] as String,
        phoneNumber: json["phoneNumber"] as String,
        createdAt: json["createdAt"] as DateTime,
        updatedAt: json["updatedAt"] as DateTime,
      );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "name": name,
        "logo": logo,
        "address": address,
        "branch": branch,
        "phoneNumber": phoneNumber,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

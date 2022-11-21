import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'brand.dart';

class Product {
  String? objectId;
  String? name;
  String? barcode;
  Brand? brand;
  String? image;
  int? price;
  DateTime? createdAt;
  DateTime? updatedAt;

  Product({
    this.objectId,
    this.name,
    this.barcode,
    this.brand,
    this.image,
    this.price,
    this.createdAt,
    this.updatedAt,
  });

  factory Product.fromJson(ParseObject json) => Product(
        objectId: json["objectId"] as String,
        name: json["name"] as String,
        barcode: json["barcode"] as String,
        // brand: json["brand"] != null ? Brand.fromJson(json["brand"]) : null,
        brand: null,
        image: json["image"] as String,
        price: json["price"] as int,
        createdAt: json["createdAt"] as DateTime,
        updatedAt: json["updatedAt"] as DateTime,
      );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "name": name,
        "barcode": barcode,
        "brand": brand,
        "image": image,
        "price": price,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

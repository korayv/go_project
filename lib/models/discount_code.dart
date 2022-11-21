import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'customer.dart';
import 'product.dart';
import 'brand.dart';

class DiscountCode {
  String? objectId;
  String? discountCode;
  double? discountAmount;
  Brand? brand;
  Product? product;
  Customer? customer;
  String? createdAt;
  String? updatedAt;

  DiscountCode({
    this.objectId,
    this.discountCode,
    this.discountAmount,
    this.brand,
    this.product,
    this.customer,
    this.createdAt,
    this.updatedAt,
  });

  factory DiscountCode.fromJson(ParseObject json) => DiscountCode(
        objectId: json["objectId"] as String,
        discountCode: json["discountCode"] as String,
        discountAmount: json["discountAmount"] as double,
        brand: Brand.fromJson(json["brand"]),
        product: Product.fromJson(json["product"]),
        customer: Customer.fromJson(json["customer"]),
        createdAt: json["createdAt"] as String,
        updatedAt: json["updatedAt"] as String,
      );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "discountCode": discountCode,
        "discountAmount": discountAmount,
        "brand": brand,
        "product": product,
        "phoneNumber": customer,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

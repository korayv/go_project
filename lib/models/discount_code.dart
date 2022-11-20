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

  // factory DiscountCode.fromJson(Map<String, dynamic> json) => DiscountCode(
  //       discountCode: json["discountCode"] as String,
  //       discountAmount: json["discountAmount"] as double,
  //       brand: json["brand"] as String,
  //       product: json["product"] as String,
  //       customer: json["customer"] as String,
  //       createdAt: json["createdAt"] as String,
  //       updatedAt: json["updatedAt"] as String,
  //     );

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

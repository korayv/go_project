class DiscountCode {
  String discountCode;
  double discountAmount;
  String brand;
  String product;
  String customer;
  String createdAt;
  String updatedAt;


  DiscountCode(
      {
        required this.discountCode,
        required this.discountAmount,
        required this.brand,
        required this.product,
        required this.customer,
        required this.createdAt,
        required this.updatedAt
      });

  factory DiscountCode.fromJson(Map<String, dynamic> json) => DiscountCode(
    discountCode: json["discountCode"] as String,
    discountAmount: json["discountAmount"] as double,
    brand: json["brand"] as String,
    product: json["product"] as String,
    customer: json["customer"] as String,
    createdAt: json["createdAt"] as String,
    updatedAt: json["updatedAt"] as String,
  );

  Map<String, dynamic> toJson() => {
    "discountCode": discountCode,
    "discountAmount": discountAmount,
    "brand": brand,
    "product": product,
    "phoneNumber": customer,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

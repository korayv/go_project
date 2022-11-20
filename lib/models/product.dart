import 'brand.dart';

class Product {
  String? objectId;
  String? name;
  String? barcode;
  Brand? brand;
  String? image;
  double? price;
  String? createdAt;
  String? updatedAt;

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

  // factory Product.fromJson(Map<String, dynamic> json) => Product(
  //       name: json["name"] as String,
  //       barcode: json["barcode"] as String,
  //       image: json["image"] as String,
  //       price: json["price"] as double,
  //       createdAt: json["createdAt"] as String,
  //       updatedAt: json["updatedAt"] as String,
  //     );

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

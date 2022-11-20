class Product {
  String name;
  String barcode;
  String image;
  double price;
  String createdAt;
  String updatedAt;


  Product(
      {
        required this.name,
        required this.barcode,
        required this.image,
        required this.price,
        required this.createdAt,
        required this.updatedAt
      });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json["name"] as String,
    barcode: json["barcode"] as String,
    image: json["image"] as String,
    price: json["price"] as double,
    createdAt: json["createdAt"] as String,
    updatedAt: json["updatedAt"] as String,
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "barcode": barcode,
    "image": image,
    "price": price,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

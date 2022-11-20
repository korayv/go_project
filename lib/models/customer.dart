import 'discount_code.dart';

class Customer {
  String? objectId;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? verificationCode;
  DiscountCode? discountCode;
  String? createdAt;
  String? updatedAt;

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

  // factory Customer.fromJson(Map<String, dynamic> json) => Customer(
  //       firstName: json["firstName"] as String,
  //       lastName: json["lastName"] as String,
  //       phoneNumber: json["phoneNumber"] as String,
  //       verification: json["verification"] as bool,
  //       discountCodes: json["discountCodes"] as Map<String, dynamic>,
  //       code: json["code"] as String,
  //       createdAt: json["createdAt"] as String,
  //       updatedAt: json["updatedAt"] as String,
  //     );

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

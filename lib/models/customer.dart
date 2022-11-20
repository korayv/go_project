class Customer {
  String firstName;
  String lastName;
  String phoneNumber;
  bool verification;
  Map<String, dynamic> discountCodes;
  String code;
  String createdAt;
  String updatedAt;


  Customer(
      {
        required this.firstName,
        required this.lastName,
        required this.phoneNumber,
        required this.verification,
        required this.discountCodes,
        required this.code,
        required this.createdAt,
        required this.updatedAt
      });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    firstName: json["firstName"] as String,
    lastName: json["lastName"] as String,
    phoneNumber: json["phoneNumber"] as String,
    verification: json["verification"] as bool,
    discountCodes: json["discountCodes"] as Map<String, dynamic>,
    code: json["code"] as String,
    createdAt: json["createdAt"] as String,
    updatedAt: json["updatedAt"] as String,
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    "phoneNumber": phoneNumber,
    "verification": verification,
    "discountCodes": discountCodes,
    "code": code,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

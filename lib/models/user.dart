class User {
  String? objectId;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? createdAt;
  String? updatedAt;

  User({
    this.objectId,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
  });

  // factory User.fromJson(Map<String, dynamic> json) => User(
  //       firstName: json["firstName"] as String,
  //       lastName: json["lastName"] as String,
  //       email: json["email"] as String,
  //       password: json["password"] as String,
  //       createdAt: json["createdAt"] as String,
  //       updatedAt: json["updatedAt"] as String,
  //     );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

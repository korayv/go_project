class User {
  String firstName;
  String lastName;
  String email;
  String password;
  String createdAt;
  String updatedAt;


  User(
      {
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.password,
        required this.createdAt,
        required this.updatedAt
      });

  factory User.fromJson(Map<String, dynamic> json) => User(
    firstName: json["firstName"] as String,
    lastName: json["lastName"] as String,
    email: json["email"] as String,
    password: json["password"] as String,
    createdAt: json["createdAt"] as String,
    updatedAt: json["updatedAt"] as String,
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
    "password": password,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

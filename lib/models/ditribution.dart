class Distribution {
  String name;
  String logo;
  String adress;
  String branch;
  String phoneNumber;
  String createdAt;
  String updatedAt;

  Distribution(
      {
        required this.name,
        required this.logo,
        required this.adress,
        required this.branch,
        required this.phoneNumber,
        required this.createdAt,
        required this.updatedAt
      });

  factory Distribution.fromJson(Map<String, dynamic> json) => Distribution(
    name: json["name"] as String,
    logo: json["logo"] as String,
    adress: json["adress"] as String,
    branch: json["branch"] as String,
    phoneNumber: json["phoneNumber"] as String,
    createdAt: json["createdAt"] as String,
    updatedAt: json["updatedAt"] as String,
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "logo": logo,
    "adress": adress,
    "branch": branch,
    "phoneNumber": phoneNumber,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
  };
}

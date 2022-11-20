class Distribution {
  String? objectId;
  String? name;
  String? logo;
  String? address;
  String? branch;
  String? phoneNumber;
  String? createdAt;
  String? updatedAt;

  Distribution({
    this.objectId,
    this.name,
    this.logo,
    this.address,
    this.branch,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  // factory Distribution.fromJson(Map<String, dynamic> json) => Distribution(
  //       name: json["name"] as String,
  //       logo: json["logo"] as String,
  //       adress: json["adress"] as String,
  //       branch: json["branch"] as String,
  //       phoneNumber: json["phoneNumber"] as String,
  //       createdAt: json["createdAt"] as String,
  //       updatedAt: json["updatedAt"] as String,
  //     );

  Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "name": name,
        "logo": logo,
        "address": address,
        "branch": branch,
        "phoneNumber": phoneNumber,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}

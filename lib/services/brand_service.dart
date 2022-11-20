import 'package:go_project/models/brand.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

class BrandService {

  static Future<void> saveBrand(Brand brand) async {
    final body = ParseObject('brands')
      ..set('brandName', brand.name)
      ..set("brandLogo", brand.logo)
      ..set("brandAdress", brand.adress)
      ..set("branch", brand.branch)
      ..set("phoneNumber", brand.phoneNumber)
      ..set("createdAt", brand.createdAt)
      ..set("updatedAt", brand.updatedAt);
    await body.save();
  }

  static Future<List<ParseObject>> getBrands() async {
    QueryBuilder<ParseObject> queryBrands =
    QueryBuilder<ParseObject>(ParseObject('brands'));
    final ParseResponse apiResponse = await queryBrands.query();
    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  static Future<void> updateBrand(String objectId,Brand brand) async {
    var body = ParseObject('brands')
      ..objectId = objectId
      ..set('brandName', brand.name)
      ..set("brandLogo", brand.logo)
      ..set("brandAdress", brand.adress)
      ..set("branch", brand.branch)
      ..set("phoneNumber", brand.phoneNumber)
      ..set("createdAt", brand.createdAt)
      ..set("updatedAt", brand.updatedAt);

    await body.save();
  }

  static Future<void> deleteBrand(String objectId) async {
    var body = ParseObject('brands')..objectId = objectId;
    await body.delete();
  }

}

import 'package:go_project/models/brand.dart';
import 'package:go_project/services/base_service.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class BrandService {
  static Future<List<dynamic>?> getAllBrands() async {
    return BaseService.getRequest('Brands');
  }

  static Future<List<dynamic>?> addBrand(Brand newBrand) async {
    final object = ParseObject('Brands');

    object.set('name', newBrand.name);
    object.set('logo', newBrand.logo);
    object.set('address', newBrand.address);
    object.set('branch', newBrand.branch);
    object.set('phoneNumber', newBrand.phoneNumber);

    return BaseService.postRequest(object);
  }

  // static Future<void> saveBrand(Brand brand) async {
  //   final body = ParseObject('brands')
  //     ..set('brandName', brand.name)
  //     ..set("brandLogo", brand.logo)
  //     ..set("brandAdress", brand.adress)
  //     ..set("branch", brand.branch)
  //     ..set("phoneNumber", brand.phoneNumber)
  //     ..set("createdAt", brand.createdAt)
  //     ..set("updatedAt", brand.updatedAt);
  //   await body.save();
  // }

  // static Future<List<ParseObject>> getBrands() async {
  //   QueryBuilder<ParseObject> queryBrands =
  //   QueryBuilder<ParseObject>(ParseObject('brands'));
  //   final ParseResponse apiResponse = await queryBrands.query();
  //   if (apiResponse.success && apiResponse.results != null) {
  //     return apiResponse.results as List<ParseObject>;
  //   } else {
  //     return [];
  //   }
  // }

  // static Future<void> updateBrand(String objectId,Brand brand) async {
  //   var body = ParseObject('brands')
  //     ..objectId = objectId
  //     ..set('brandName', brand.name)
  //     ..set("brandLogo", brand.logo)
  //     ..set("brandAdress", brand.adress)
  //     ..set("branch", brand.branch)
  //     ..set("phoneNumber", brand.phoneNumber)
  //     ..set("createdAt", brand.createdAt)
  //     ..set("updatedAt", brand.updatedAt);

  //   await body.save();
  // }

  // static Future<void> deleteBrand(String objectId) async {
  //   var body = ParseObject('brands')..objectId = objectId;
  //   await body.delete();
  // }
}

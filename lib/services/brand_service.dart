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

  static Future<List<dynamic>?> updateBrand(Brand uBrand, String id) async {
    final object = ParseObject('Brands');
    object.objectId = id;

    object.set('name', uBrand.name);
    object.set('logo', uBrand.logo);
    object.set('address', uBrand.address);
    object.set('branch', uBrand.branch);
    object.set('phoneNumber', uBrand.phoneNumber);

    return BaseService.putRequest(object);
  }

  static Future<List<dynamic>?> deleteBrand(String id) async {
    final object = ParseObject('Brands');
    object.objectId = id;

    return BaseService.deleteRequest(object);
  }
}

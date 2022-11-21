import 'package:go_project/models/discount_code.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

import 'base_service.dart';

class DiscountCodeService {
  static Future<List<dynamic>?> getAllDiscountCodes() async {
    return BaseService.getRequest('DiscountCodes');
  }

  static Future<List<dynamic>?> addDiscountCode(
      DiscountCode newDiscountCode, String brandId, String productId) async {
    final object = ParseObject('DiscountCodes');

    object.set('discountCode', newDiscountCode.discountCode);
    object.set('discountAmount', newDiscountCode.discountAmount);
    object.set('brand', ParseObject('Brands')..objectId = brandId);
    object.set('product', ParseObject('Products')..objectId = productId);
    object.set('customer', newDiscountCode.customer);

    return BaseService.postRequest(object);
  }

  static Future<List<dynamic>?> updateDiscountCode(
      DiscountCode uDiscountCode, String id) async {
    final object = ParseObject('DiscountCodes');
    object.objectId = id;

    object.set('discountCode', uDiscountCode.discountCode);
    object.set('discountAmount', uDiscountCode.discountAmount);
    object.set('brand', uDiscountCode.brand);
    object.set('product', uDiscountCode.product);
    object.set('customer', uDiscountCode.customer);

    return BaseService.putRequest(object);
  }

  static Future<List<dynamic>?> deleteDiscountCode(String id) async {
    final object = ParseObject('DiscountCodes');
    object.objectId = id;

    return BaseService.deleteRequest(object);
  }
}

import 'package:go_project/models/discount_code.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

class DiscountCodeService {

  static Future<void> saveDiscountCode(DiscountCode discountCode) async {
    final body = ParseObject('discountCodes')
      ..set('discountCode', discountCode.discountCode)
      ..set("discountAmount", discountCode.discountAmount)
      ..set("brand", discountCode.brand)
      ..set("product", discountCode.product)
      ..set("customer", discountCode.customer)
      ..set("createdAt", discountCode.createdAt)
      ..set("updatedAt", discountCode.updatedAt);
    await body.save();
  }

  static Future<List<ParseObject>> getDiscountCodes() async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('discountCodes'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  static Future<void> updateDiscountCode(String objectId,DiscountCode discountCode) async {
    var body = ParseObject('discountCodes')
      ..objectId = objectId
      ..set('discountCode', discountCode.discountCode)
      ..set("discountAmount", discountCode.discountAmount)
      ..set("brand", discountCode.brand)
      ..set("product", discountCode.product)
      ..set("customer", discountCode.customer)
      ..set("createdAt", discountCode.createdAt)
      ..set("updatedAt", discountCode.updatedAt);

    await body.save();
  }

  static Future<void> deleteDiscountCode(String objectId) async {
    var body = ParseObject('discountCodes')..objectId = objectId;
    await body.delete();
  }

}

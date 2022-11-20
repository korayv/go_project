import 'package:go_project/models/customer.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

class CustomerService {

  static Future<void> saveCustomer(Customer customer) async {
    final body = ParseObject('customers')
      ..set('firstName', customer.firstName)
      ..set("lastName", customer.lastName)
      ..set("phoneNumber", customer.phoneNumber)
      ..set("verification", customer.verification)
      ..set("discountCodes", customer.discountCodes)
      ..set("code", customer.code)
      ..set("createdAt", customer.createdAt)
      ..set("updatedAt", customer.updatedAt);
    await body.save();
  }

  static Future<List<ParseObject>> getCustomer() async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('customers'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  static Future<void> updateCustomer(String objectId,Customer customer) async {
    var body = ParseObject('customers')
      ..objectId = objectId
      ..set('firstName', customer.firstName)
      ..set("lastName", customer.lastName)
      ..set("phoneNumber", customer.phoneNumber)
      ..set("verification", customer.verification)
      ..set("discountCodes", customer.discountCodes)
      ..set("code", customer.code)
      ..set("createdAt", customer.createdAt)
      ..set("updatedAt", customer.updatedAt);

    await body.save();
  }

  static Future<void> deleteCustomer(String objectId) async {
    var body = ParseObject('customers')..objectId = objectId;
    await body.delete();
  }

}

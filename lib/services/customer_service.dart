import 'package:go_project/models/customer.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

import 'base_service.dart';

class CustomerService {
  static Future<List<dynamic>?> getAllCustomers() async {
    return BaseService.getRequest('Customers');
  }

  static Future<List<dynamic>?> addCustomer(Customer newCustomer) async {
    final object = ParseObject('Customers');

    object.set('firstName', newCustomer.firstName);
    object.set('lastName', newCustomer.lastName);
    object.set('phoneNumber', newCustomer.phoneNumber);
    object.set('verificationCode', newCustomer.verificationCode);
    object.set('discountCode', newCustomer.discountCode);

    return BaseService.postRequest(object);
  }

  static Future<List<dynamic>?> updateCustomer(
      Customer uCustomer, String id) async {
    final object = ParseObject('Customers');
    object.objectId = id;

    object.set('firstName', uCustomer.firstName);
    object.set('lastName', uCustomer.lastName);
    object.set('phoneNumber', uCustomer.phoneNumber);
    object.set('verificationCode', uCustomer.verificationCode);
    object.set('discountCode', uCustomer.discountCode);

    return BaseService.putRequest(object);
  }

  static Future<List<dynamic>?> deleteCustomer(String id) async {
    final object = ParseObject('Customers');
    object.objectId = id;

    return BaseService.deleteRequest(object);
  }
}

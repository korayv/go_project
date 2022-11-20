import 'package:go_project/models/user.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

import 'base_service.dart';

class UserService {
  static Future<List<dynamic>?> getAllUsers() async {
    return BaseService.getRequest('Users');
  }

  static Future<List<dynamic>?> addUser(User newUser) async {
    final object = ParseObject('Users');

    object.set('firstName', newUser.firstName);
    object.set('lastName', newUser.lastName);
    object.set('email', newUser.email);
    object.set('password', newUser.password);

    return BaseService.postRequest(object);
  }

  static Future<List<dynamic>?> updateUser(User uUser, String id) async {
    final object = ParseObject('Users');
    object.objectId = id;

    object.set('firstName', uUser.firstName);
    object.set('lastName', uUser.lastName);
    object.set('email', uUser.email);
    object.set('password', uUser.password);

    return BaseService.putRequest(object);
  }

  static Future<List<dynamic>?> deleteUser(String id) async {
    final object = ParseObject('Users');
    object.objectId = id;

    return BaseService.deleteRequest(object);
  }
}

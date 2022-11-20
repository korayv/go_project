import 'package:go_project/models/user.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

class UserService {

  static Future<void> saveUser(User user) async {
    final body = ParseObject('customers')
      ..set('firstName', user.firstName)
      ..set("lastName", user.lastName)
      ..set("phoneNumber", user.email)
      ..set("verification", user.password)
      ..set("createdAt", user.createdAt)
      ..set("updatedAt", user.updatedAt);
    await body.save();
  }

  static Future<List<ParseObject>> getUsers() async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('customers'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  static Future<void> updateUser(String objectId,User user) async {
    var body = ParseObject('customers')
      ..objectId = objectId
      ..set('firstName', user.firstName)
      ..set("lastName", user.lastName)
      ..set("phoneNumber", user.email)
      ..set("verification", user.password)
      ..set("createdAt", user.createdAt)
      ..set("updatedAt", user.updatedAt);

    await body.save();
  }

  static Future<void> deleteUser(String objectId) async {
    var body = ParseObject('customers')..objectId = objectId;
    await body.delete();
  }

}

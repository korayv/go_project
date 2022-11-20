import "package:parse_server_sdk/parse_server_sdk.dart";
import '../storage/storage.dart';

class BaseService {

  static SecureStorage secureStorage = SecureStorage();

 /* Future<void> saveTodo(String title) async {
    final todo = ParseObject('Todo')..set('title', title)..set('done', false);
    await todo.save();
  }

  Future<List<ParseObject>> getTodo() async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('Todo'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  Future<void> updateTodo(String id, bool done) async {
    var todo = ParseObject('Todo')
      ..objectId = id
      ..set('done', done);
    await todo.save();
  }

  Future<void> deleteTodo(String id) async {
    var todo = ParseObject('Todo')..objectId = id;
    await todo.delete();
  }*/

/*  static Future<Map<String, dynamic>> getRequest(String path) async {
    String token = await secureStorage.readSecureData('token');
    var url = Uri.parse(baseUrl + path);
    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token",
    };
    var response = await http.get(url, headers: headers);
    var body = jsonDecode(utf8.decode(response.bodyBytes));
    if(body["message"] == "Unauthorized") {
      debugPrint("******* Unauthorized ******** Tekrar Giriş Yapılması Gerekiyor *******");
      await secureStorage.writeSecureData('isAuthenticated', 'false');
    }
    return body;
  }

  static Future<Map<String, dynamic>> postRequest({
    required String path,
    dynamic data,
    bool isLogin = false,
  }) async {
    String token = await secureStorage.readSecureData('token') ?? "";
    var url = Uri.parse(baseUrl + path);
    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token",
    };
    var response = await http.post(url, body: isLogin ? json.encode(data) : json.encode(data.toJson()), headers: headers);
    var body = jsonDecode(utf8.decode(response.bodyBytes));

    if(body["message"] == "Unauthorized") {
      debugPrint("******* Unauthorized ******** Tekrar Giriş Yapılması Gerekiyor *******");
      await secureStorage.writeSecureData('isAuthenticated', 'false');
    }

    if(body["success"] && isLogin){
      User user = User.fromJson(body["data"]);

      String tokenExpireDate = DateTime.now().add(const Duration(minutes: 29)).toString();

      await secureStorage.writeSecureData('tokenExpireDate', tokenExpireDate);

      await secureStorage.writeSecureData('isAuthenticated', 'true');
      await secureStorage.writeSecureData('firstName', user.firstName);
      await secureStorage.writeSecureData('lastName', user.lastName);
      await secureStorage.writeSecureData('email', user.email);
      await secureStorage.writeSecureData('phoneNumber', user.phoneNumber);
      await secureStorage.writeSecureData('userId', user.userId.toString());
      await secureStorage.writeSecureData('token', body["token"]);
    }
    return body;
  }

  static Future<Map<String, dynamic>> putRequest({String path = "", dynamic data}) async {
    String token = await secureStorage.readSecureData('token');
    var url = Uri.parse(baseUrl + path);
    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token",
    };
    var response = await http.put(url, body: json.encode(data.toJson()), headers: headers);
    var body = jsonDecode(utf8.decode(response.bodyBytes));

    if(body["message"] == "Unauthorized") {
      debugPrint("******* Unauthorized ******** Tekrar Giriş Yapılması Gerekiyor *******");
      await secureStorage.writeSecureData('isAuthenticated', 'false');
    }

    return body;
  }

  static Future<Map<String, dynamic>> patchRequest({String path = "", dynamic data}) async {
    String token = await secureStorage.readSecureData('token');
    var url = Uri.parse(baseUrl + path);
    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token",
    };
    var response = await http.patch(url, body: json.encode(data.toJson()), headers: headers);
    var body = jsonDecode(utf8.decode(response.bodyBytes));

    if(body["message"] == "Unauthorized") {
      debugPrint("******* Unauthorized ******** Tekrar Giriş Yapılması Gerekiyor *******");
      await secureStorage.writeSecureData('isAuthenticated', 'false');
    }

    return body;
  }

  static Future<Map<String, dynamic>> deleteRequest(String path) async {
    String token = await secureStorage.readSecureData('token');
    var url = Uri.parse(baseUrl + path);
    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token",
    };
    var response = await http.delete(url, headers: headers);
    var body = jsonDecode(utf8.decode(response.bodyBytes));

    if(body["message"] == "Unauthorized") {
      debugPrint("******* Unauthorized ******** Tekrar Giriş Yapılması Gerekiyor *******");
      await secureStorage.writeSecureData('isAuthenticated', 'false');
    }

    return body;
  }

  static Future<Map<String, dynamic>> multipartRequest({
    required String path,
    required String fieldName,
    dynamic data,
    String requestType = 'POST',
    File? file,
  }) async {

    String token = await secureStorage.readSecureData('token') ?? "";
    var url = Uri.parse(baseUrl + path);
    var request = http.MultipartRequest(requestType, url);
    request.headers.addAll({"Authorization": "Bearer $token"});
    request.fields[fieldName] = json.encode(data.toJson()).toString();

    if(file != null) {
      request.files.add(await http.MultipartFile.fromPath("file", file.path));
    }

    var response = await request.send();
    var responded = await http.Response.fromStream(response);

    var body = jsonDecode(utf8.decode(responded.bodyBytes));

    if(body["message"] == "Unauthorized") {
      debugPrint("******* Unauthorized ******** Tekrar Giriş Yapılması Gerekiyor *******");
      await secureStorage.writeSecureData('isAuthenticated', 'false');
    }

    return body;
  }*/

}

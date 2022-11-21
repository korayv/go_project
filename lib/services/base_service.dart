import 'dart:convert';

import 'package:flutter/material.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";
// import '../storage/storage.dart';

class BaseService {
  // static SecureStorage secureStorage = SecureStorage();

  static Future<void> initParse() async {
    const keyApplicationId = 'q7wHH3k3GJtgQvfDJpIncqfR9O0pWtkk9V12GBDI';
    const keyClientKey = 'O7o9rJmtLtj6BS1SsmcQzuWEoowUsdVLmVckTuAG';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(
      keyApplicationId,
      keyParseServerUrl,
      clientKey: keyClientKey,
      debug: true,
    );
  }

  static Future<List<dynamic>?> getRequest(String className) async {
    QueryBuilder<ParseObject> query = QueryBuilder<ParseObject>(
      ParseObject(className),
    );

    final ParseResponse response = await query.query();

    if (response.success) {
      debugPrint('getRequest response: ${response.results.toString()}');
      return response.results;
    } else {
      debugPrint('getRequest error: ${response.error.toString()}');
      return null;
    }
  }

  static Future<List<dynamic>?> postRequest(ParseObject object) async {
    final ParseResponse response = await object.save();

    if (response.success) {
      debugPrint('postRequest response: ${response.results.toString()}');
      return response.results;
    } else {
      debugPrint('postRequest error: ${response.error.toString()}');
      return null;
    }
  }

  static Future<List<dynamic>?> putRequest(ParseObject object) async {
    final ParseResponse response = await object.save();

    if (response.success) {
      debugPrint('putRequest response: ${response.results.toString()}');
      return response.results;
    } else {
      debugPrint('putRequest error: ${response.error.toString()}');
      return null;
    }
  }

  static Future<List<dynamic>?> deleteRequest(ParseObject object) async {
    final ParseResponse response = await object.delete();

    if (response.success) {
      debugPrint('deleteRequest response: ${response.results.toString()}');
      return response.results;
    } else {
      debugPrint('deleteRequest error: ${response.error.toString()}');
      return null;
    }
  }
}

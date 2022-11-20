import 'package:go_project/models/distribution.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

import 'base_service.dart';

class DistributionService {
  static Future<List<dynamic>?> getAllDistributions() async {
    return BaseService.getRequest('Distributions');
  }

  static Future<List<dynamic>?> addDistribution(
      Distribution newDistribution) async {
    final object = ParseObject('Distributions');

    object.set('name', newDistribution.name);
    object.set('logo', newDistribution.logo);
    object.set('address', newDistribution.address);
    object.set('branch', newDistribution.branch);
    object.set('phoneNumber', newDistribution.phoneNumber);

    return BaseService.postRequest(object);
  }

  static Future<List<dynamic>?> updateDistribution(
      Distribution uDistribution, String id) async {
    final object = ParseObject('Distributions');
    object.objectId = id;

    object.set('name', uDistribution.name);
    object.set('logo', uDistribution.logo);
    object.set('address', uDistribution.address);
    object.set('branch', uDistribution.branch);
    object.set('phoneNumber', uDistribution.phoneNumber);

    return BaseService.putRequest(object);
  }

  static Future<List<dynamic>?> deleteDistribution(String id) async {
    final object = ParseObject('Distributions');
    object.objectId = id;

    return BaseService.deleteRequest(object);
  }
}

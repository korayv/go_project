import 'package:go_project/models/product.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

import 'base_service.dart';

class ProductService {
  static Future<List<dynamic>?> getAllProducts() async {
    return BaseService.getRequest('Products');
  }

  static Future<List<dynamic>?> addProduct(Product newProduct) async {
    final object = ParseObject('Products');

    object.set('name', newProduct.name);
    object.set('barcode', newProduct.barcode);
    object.set('brand', newProduct.brand);
    object.set('image', newProduct.image);
    object.set('price', newProduct.price);

    return BaseService.postRequest(object);
  }

  static Future<List<dynamic>?> updateProduct(
      Product uProduct, String id) async {
    final object = ParseObject('Products');
    object.objectId = id;

    object.set('name', uProduct.name);
    object.set('barcode', uProduct.barcode);
    object.set('brand', uProduct.brand);
    object.set('image', uProduct.image);
    object.set('price', uProduct.price);

    return BaseService.putRequest(object);
  }

  static Future<List<dynamic>?> deleteProduct(String id) async {
    final object = ParseObject('Products');
    object.objectId = id;

    return BaseService.deleteRequest(object);
  }
}

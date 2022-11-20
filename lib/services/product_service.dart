import 'package:go_project/models/product.dart';
import "package:parse_server_sdk/parse_server_sdk.dart";

class ProductService {

  static Future<void> saveProduct(Product product) async {
    final body = ParseObject('products')
      ..set('name', product.name)
      ..set("barcode", product.barcode)
      ..set("image", product.image)
      ..set("price", product.price)
      ..set("createdAt", product.createdAt)
      ..set("updatedAt", product.updatedAt);
    await body.save();
  }

  static Future<List<ParseObject>> getProducts() async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('products'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }

  static Future<void> updateProduct(String objectId,Product product) async {
    var body = ParseObject('products')
      ..objectId = objectId
      ..set('name', product.name)
      ..set("barcode", product.barcode)
      ..set("image", product.image)
      ..set("price", product.price)
      ..set("createdAt", product.createdAt)
      ..set("updatedAt", product.updatedAt);

    await body.save();
  }

  static Future<void> deleteProduct(String objectId) async {
    var body = ParseObject('products')..objectId = objectId;
    await body.delete();
  }

}

import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StoreApi
void main() {
  final instance = Openapi().getStoreApi();

  group(StoreApi, () {
    // Returns pet inventories by status
    //
    // Returns a map of status codes to quantities
    //
    //Future<BuiltMap<String, int>> getInventory() async
    test('test getInventory', () async {
      // TODO
    });

    // Place an order for a pet
    //
    //Future<Order> orderCreate(Order body) async
    test('test orderCreate', () async {
      // TODO
    });

    // Delete purchase order by ID
    //
    // For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
    //
    //Future orderDelete(int orderId) async
    test('test orderDelete', () async {
      // TODO
    });

    // Find purchase order by ID
    //
    // For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions
    //
    //Future<Order> orderRead(int orderId) async
    test('test orderRead', () async {
      // TODO
    });

  });
}

import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // Creates list of users with given input array
    //
    //Future createUsersWithArrayInput(BuiltList<User> body) async
    test('test createUsersWithArrayInput', () async {
      // TODO
    });

    // Creates list of users with given input array
    //
    //Future createUsersWithListInput(BuiltList<User> body) async
    test('test createUsersWithListInput', () async {
      // TODO
    });

    // Logs user into the system
    //
    //Future<String> loginUser(String username, String password) async
    test('test loginUser', () async {
      // TODO
    });

    // Logs out current logged in user session
    //
    //Future logoutUser() async
    test('test logoutUser', () async {
      // TODO
    });

    // Get user by user name
    //
    //Future<User> userByUsernameRead(String username) async
    test('test userByUsernameRead', () async {
      // TODO
    });

    // Create user
    //
    // This can only be done by the logged in user.
    //
    //Future userCreate(User body) async
    test('test userCreate', () async {
      // TODO
    });

    // Delete user
    //
    // This can only be done by the logged in user.
    //
    //Future userDelete(String username) async
    test('test userDelete', () async {
      // TODO
    });

    // Updated user
    //
    // This can only be done by the logged in user.
    //
    //Future userUpdate(String username, User body) async
    test('test userUpdate', () async {
      // TODO
    });

  });
}

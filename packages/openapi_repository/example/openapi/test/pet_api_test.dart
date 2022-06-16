import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PetApi
void main() {
  final instance = Openapi().getPetApi();

  group(PetApi, () {
    // Finds Pets by status
    //
    // Multiple status values can be provided with comma separated strings
    //
    //Future<BuiltList<Pet>> findPetsByStatus(BuiltList<String> status) async
    test('test findPetsByStatus', () async {
      // TODO
    });

    // Finds Pets by tags
    //
    // Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
    //
    //Future<BuiltList<Pet>> findPetsByTags(BuiltList<String> tags) async
    test('test findPetsByTags', () async {
      // TODO
    });

    // uploads an image
    //
    //Future<ApiResponse> imageCreate(int petId, { String additionalMetadata, MultipartFile file }) async
    test('test imageCreate', () async {
      // TODO
    });

    // Add a new pet to the store
    //
    //Future petCreate(Pet body) async
    test('test petCreate', () async {
      // TODO
    });

    // Deletes a pet
    //
    //Future petDelete(int petId, { String apiKey }) async
    test('test petDelete', () async {
      // TODO
    });

    // Find pet by ID
    //
    // Returns a single pet
    //
    //Future<Pet> petRead(int petId) async
    test('test petRead', () async {
      // TODO
    });

    // Update an existing pet
    //
    //Future petUpdate(Pet body) async
    test('test petUpdate', () async {
      // TODO
    });

    // Updates a pet in the store with form data
    //
    //Future petWithFormUpdate(int petId, { String name, String status }) async
    test('test petWithFormUpdate', () async {
      // TODO
    });

  });
}

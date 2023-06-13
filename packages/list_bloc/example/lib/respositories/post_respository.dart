import 'package:list_bloc/list_bloc.dart';
import 'package:list_bloc_example/api/json_placeholder_api.dart';
import 'package:list_bloc_example/models/post.dart';


class PostRepository extends ListRepository<Post, String> {
  final JsonPlaceholderApi _jsonPlaceholderApi;

  PostRepository({JsonPlaceholderApi? jsonPlaceholderApi})
      : _jsonPlaceholderApi = jsonPlaceholderApi ?? JsonPlaceholderApi();

  /// Loads the data from Api
  @override
  Future<List<Post>> loader([String? filter]) async {
    return _jsonPlaceholderApi.fetchPosts();
  }
}

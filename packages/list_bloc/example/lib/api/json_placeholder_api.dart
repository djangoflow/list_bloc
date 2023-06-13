import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:list_bloc_example/models/post.dart';

/// Dummy Api has been used just for example.
/// Should be replaced with actual Api.
class JsonPlaceholderApi {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      final posts = data.map((item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw Exception('Failed to fetch posts');
    }
  }
}

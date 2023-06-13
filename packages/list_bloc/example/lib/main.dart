import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:list_bloc_example/models/post.dart';
import 'package:list_bloc_example/respositories/post_respository.dart';
import 'package:list_bloc_example/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(postRepository: PostRepository()));
}

class App extends StatelessWidget {
  final PostRepository postRepository;

  const App({
    super.key,
    required this.postRepository,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListCubit Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider.value(
        value: postRepository,
        child: BlocProvider<ListCubit<Post, String>>(
          create: (context) => ListCubit<Post, String>(postRepository.loader),
          child: const HomeScreen(),
        ),
      ),
    );
  }
}

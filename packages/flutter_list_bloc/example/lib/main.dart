import 'package:example/showcases/sliver_list_bloc_builder_showcase.dart';
import 'package:flutter/material.dart';

import 'showcases.dart';
import 'showcases/continuous_list_view_builder.dart';
import 'showcases/continuous_scroll_builder_showcase.dart';
import 'showcases/data_bloc_builder_showcase.dart';
import 'showcases/list_bloc_builder_showcase.dart';
import 'showcases/list_view_bloc_builder_showcase.dart';
import 'showcases/page_view_bloc_builder_showcase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Bloc Showcase',
      routes: {
        '/': (_) => const Showcases(),
        '/list-bloc-builder': (_) => const ListBlocBuilderShowcase(),
        '/data-bloc-builder': (_) => const DataBlocBuilderShowcase(),
        '/list-view-bloc-builder': (_) => const ListViewBlocBuilderShowcase(),
        '/continuous-list-view-bloc-builder': (_) => const ContinuousListViewBlocBuilderShowcase(),
        '/continuous-scroll-builder': (_) => const ContinuousScrollBuilderShowcase(),
        '/page-view-bloc-builder': (_) => const PageViewBlocBuilderShowcase(),
        '/sliver-list-bloc-builder': (_) => const SliverListBlocBuilderShowcase()
      },
    );
  }
}

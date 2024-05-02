import 'package:flutter/material.dart';

class Showcases extends StatefulWidget {
  const Showcases({super.key});

  @override
  State<Showcases> createState() => _ShowcasesState();
}

class _ShowcasesState extends State<Showcases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Bloc Showcases'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('ListBlocBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/list-bloc-builder');
            },
          ),
          ListTile(
            title: const Text('DataBlocBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/data-bloc-builder');
            },
          ),
          ListTile(
            title: const Text('ListViewBlocBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/list-view-bloc-builder');
            },
          ),
          ListTile(
            title: const Text('ContinuousListViewBlocBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/continuous-list-view-bloc-builder');
            },
          ),
          ListTile(
            title: const Text('ContinuousScrollBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/continuous-scroll-builder');
            },
          ),
          ListTile(
            title: const Text('PageViewBlocBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/page-view-bloc-builder');
            },
          ),
          ListTile(
            title: const Text('SliverListBlocBuilder'),
            onTap: () {
              Navigator.of(context).pushNamed('/sliver-list-bloc-builder');
            },
          ),
        ],
      ),
    );
  }
}

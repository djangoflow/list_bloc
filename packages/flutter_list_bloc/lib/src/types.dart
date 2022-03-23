import 'package:flutter/material.dart';
import 'package:list_bloc/list_bloc.dart';

typedef Widget ListStateBuilder<T, F>(
  BuildContext context,
  Data<List<T>, F> state,
);

typedef Widget ListItemBuilder<T, F>(
  BuildContext context,
  Data<List<T>, F> state,
  int index,
  T item,
);

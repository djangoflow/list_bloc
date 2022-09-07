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

typedef Widget DataStateBuilder<T, F>(
  BuildContext context,
  Data<T, F> state,
);

typedef Widget ErrorStateBuilder<T, F>(
  BuildContext context,
  Error<T, F> state,
);

typedef Widget DataItemBuilder<T, F>(
  BuildContext context,
  Data<T, F> state,
);

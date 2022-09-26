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

typedef Widget ListErrorStateBuilder<T, F>(
  BuildContext context,
  Error<List<T>, F> state,
);

typedef Widget DataErrorStateBuilder<T, F>(
  BuildContext context,
  Error<T, F> state,
);

typedef Widget DataItemBuilder<T, F>(
  BuildContext context,
  Data<T, F> state,
);

typedef Widget PageStateBuilder<T, F>(
  BuildContext context,
  Data<ListPage<T>, F> state,
);

typedef void OnPageChangedBuilder<T, F>(
  BuildContext context,
  Data<ListPage<T>, F> state,
  int index,
);

typedef Widget PageErrorStateBuilder<T, F>(
  BuildContext context,
  Error<ListPage<T>, F> state,
);

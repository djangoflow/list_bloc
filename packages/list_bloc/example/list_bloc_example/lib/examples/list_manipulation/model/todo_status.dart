import 'package:flutter/material.dart';

enum TodoStatus { pending, started, completed }

extension TodoStatusExtension on TodoStatus {
  Color get color {
    switch (this) {
      case TodoStatus.pending:
        return const Color(0xff60451f);
      case TodoStatus.started:
        return const Color(0xff002e56);
      case TodoStatus.completed:
        return const Color(0xff244924);
    }
  }

  Color get backgroundColor {
    switch (this) {
      case TodoStatus.pending:
        return const Color(0xfff0ad4e);
      case TodoStatus.started:
        return const Color(0xff0275d8);
      case TodoStatus.completed:
        return const Color(0xff5cb85c);
    }
  }
}

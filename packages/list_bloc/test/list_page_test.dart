import 'package:list_bloc/list_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('ListPage', () {
    test('calculates offset correctly', () {
      expect(ListPage(number: 0, size: 25).offset, 0);

      expect(ListPage(number: 2, size: 25).offset, 50);
    });

    test('calculates number of pages correctly', () {
      expect(ListPage(number: 0, size: 0, count: 0).pages, 0);

      expect(ListPage(number: 0, size: 50, count: 50).pages, 1);

      expect(ListPage(number: 0, size: 50, count: 20).pages, 1);
    });
  });
}

import 'package:test/test.dart';
import '../../../../bin/22/08/220820/main_220820.dart';

void main() {
  group('Day 4 - 220820', () {
    test('Day 220820 - doSomething', () {
      expect(doSomething(), '220820');
    });

    test('Day 4 - 22082 - car', () {
      expect(car(cons(3, 4)), 3);
    });

    test('Day 4 - 22082 - cdr', () {
      expect(cdr(cons(3, 4)), 4);
    });
  });
}

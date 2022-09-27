import 'package:test/test.dart';
import '../../../../bin/22/09/220902/main_220902.dart';

void main() {
  group('Day 17 - 220902', () {
    test('Day 220902 - doSomething', () {
      expect(doSomething(), '220902');
    });

    test('Day 220902 - maxList', () {
      expect(maxList([10, 5, 2, 7, 8, 7], 3), [10, 7, 8, 8]);
    });

    test('Day 220902 - max', () {
      expect(max([10, 5, 2]), 10);
    });

    test('Day 220902 - max', () {
      expect(max([5, 2, 7]), 7);
    });

    test('Day 220902 - max', () {
      expect(max([2, 7, 8]), 8);
    });

    test('Day 220902 - max', () {
      expect(max([7, 8, 7]), 8);
    });
  });
}

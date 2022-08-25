import 'package:test/test.dart';
import '../../bin/220819/main_220819.dart';

void main() {
  group('Day 3 - 220819', () {
    test('Day 220819 - doSomething', () {
      expect(doSomething(), '220819');
    });
    test(
      'Day 220819 - smallestIntNotInList example 1',
      () => expect(smallestIntNotInList([3, 4, -1, 1]), 2),
    );
    test(
      'Day 220819 - missingInt example 1',
      () => expect(missingInt([3, 4, -1, 1]), 2),
    );
    test(
      'Day 220819 - smallestIntNotInList example 2',
      () => expect(smallestIntNotInList([1, 2, 0]), 3),
    );
    test(
      'Day 220819 - missingInt example 2',
      () => expect(missingInt([1, 2, 0]), 3),
    );
    test('abc', () {
      final list = randomUniqueList(10, minus: 2, overhead: 2);
      print(list..sort());
      print(smallestIntNotInList(list));
    });
  });
}

List<int> randomUniqueList(int size, {int overhead = 0, int minus = 0}) {
  final list = List<int>.generate(size + overhead, (i) => i - minus)..shuffle();
  return list.sublist(0, size);
}

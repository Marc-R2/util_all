import 'package:test/test.dart';
import '../../../../bin/22/08/220824/main_220824.dart';

void main() {
  group('Day 8 - 220824', () {
    test('Day 220824 - doSomething', () {
      expect(doSomething(), '220824');
    });

    group('Day 220824 - sumLargestNonAdjacentNums', () {
      test('Day 220824 - [2, 4, 6, 2, 5] (sample 1)', () {
        expect(sumLargestNonAdjacentNums([2, 4, 6, 2, 5]), 13);
      });

      test('Day 220824 - [5, 1, 1, 5] (sample 2)', () {
        expect(sumLargestNonAdjacentNums([5, 1, 1, 5]), 10);
      });

      test('Day 220824 - []', () {
        expect(sumLargestNonAdjacentNums([]), 0);
      });

      test('Day 220824 - [1]', () {
        expect(sumLargestNonAdjacentNums([1]), 1);
      });

      test('Day 220824 - [2]', () {
        expect(sumLargestNonAdjacentNums([2]), 2);
      });

      test('Day 220824 - [1, 2]', () {
        expect(sumLargestNonAdjacentNums([1, 2]), 2);
      });

      test('Day 220824 - [1, 2, 3]', () {
        expect(sumLargestNonAdjacentNums([1, 2, 3]), 4);
      });

      test('Day 220824 - [1, 2, 3, 4]', () {
        expect(sumLargestNonAdjacentNums([1, 2, 3, 4]), 6);
      });

      test('Day 220824 - [1, 2, 3, 4, 5]', () {
        expect(sumLargestNonAdjacentNums([1, 2, 3, 4, 5]), 9);
      });

      test('Day 220824 - [1, 2, 3, 4, 5, 6]', () {
        expect(sumLargestNonAdjacentNums([1, 2, 3, 4, 5, 6]), 12);
      });

      test('Day 220824 - [1, 2, 3, 4, 5, 6, 7]', () {
        expect(sumLargestNonAdjacentNums([1, 2, 3, 4, 5, 6, 7]), 16);
      });
    });
  });
}

import 'package:test/test.dart';
import '../../../../bin/22/08/220817/main_220817.dart';

void main() {
  group('Day 1 - 220817', () {
    test('Day 220817 - doSomething', () {
      expect(doSomething(), '220817');
    });

    group('Day 220817 - productsOfEveryOtherNumber', () {
      group('Day 220817 - example', () {
        test('Day 220817 - productsOfEveryOtherNumber example 1', () {
          expect(
            productsOfEveryOtherNumber([1, 2, 3, 4, 5]),
            [120, 60, 40, 30, 24],
          );
        });

        test('Day 220817 - productsOfEveryOtherNumberHard example 1', () {
          expect(
            productsOfEveryOtherNumberHard([1, 2, 3, 4, 5]),
            [120, 60, 40, 30, 24],
          );
        });

        test('Day 220817 - productsOfEveryOtherNumber example 2', () {
          expect(
            productsOfEveryOtherNumber([3, 2, 1]),
            [2, 3, 6],
          );
        });

        test('Day 220817 - productsOfEveryOtherNumberHard example 2', () {
          expect(
            productsOfEveryOtherNumberHard([3, 2, 1]),
            [2, 3, 6],
          );
        });
      });
      group('Day 220817 - random', () {

      });
    });
  });
}

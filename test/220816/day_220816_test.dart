import 'dart:math';

import 'package:test/test.dart';
import '../../bin/220816/main_220816.dart';

void main() {
  group('Day 0 - 220816', () {
    test('Day 220816 - doSomething', () {
      expect(doSomething(), '220816');
    });

    group('Day 220816 - twoAddUpToKbrutForce', () {
      group('Day 220816 - tiny', () {
        test('Day 220816 - true - [10, 15, 3, 7] - 17', () {
          expect(
            twoAddUpToKbrutForce([10, 15, 3, 7], 17),
            true,
            reason: 'BrFo',
          );
          expect(reason: 'twoAddUpToK', twoAddUpToK([10, 15, 3, 7], 17), true);
        });

        test('Day 220816 - false - [10, 15, 3, 8] - 17', () {
          expect(
            twoAddUpToKbrutForce([10, 15, 3, 8], 17),
            false,
            reason: 'BrFo',
          );
          expect(reason: 'twoAddUpToK', twoAddUpToK([10, 15, 3, 8], 17), false);
        });

        test('Day 220816 - true - [10, 15, 3, 7] - 18', () {
          expect(
            twoAddUpToKbrutForce([10, 15, 3, 7], 18),
            true,
            reason: 'BrFo',
          );
          expect(reason: 'twoAddUpToK', twoAddUpToK([10, 15, 3, 7], 18), true);
        });

        test('Day 220816 - true - [10, 15, 3, 8] - 18', () {
          expect(
            twoAddUpToKbrutForce([10, 15, 3, 8], 18),
            true,
            reason: 'BrFo',
          );
          expect(reason: 'twoAddUpToK', twoAddUpToK([10, 15, 3, 8], 18), true);
        });
      });

      group('Day 220816 - medium', () {
        const mediumList = <int>[1, 2, 3, 4, 5, 6, 7, 8];
        test('Day 220816 - mediumList - 0', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 0), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 0), false);
        });

        test('Day 220816 - mediumList - 1', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 1), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 1), false);
        });

        test('Day 220816 - mediumList - 2', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 2), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 2), false);
        });

        test('Day 220816 - mediumList - 3', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 3), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 3), true);
        });

        test('Day 220816 - mediumList - 4', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 4), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 4), true);
        });

        test('Day 220816 - mediumList - 5', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 5), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 5), true);
        });

        test('Day 220816 - mediumList - 6', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 6), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 6), true);
        });

        test('Day 220816 - mediumList - 7', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 7), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 7), true);
        });

        test('Day 220816 - mediumList - 8', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 8), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 8), true);
        });

        test('Day 220816 - mediumList - 9', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 9), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 9), true);
        });

        test('Day 220816 - mediumList - 10', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 10), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 10), true);
        });

        test('Day 220816 - mediumList - 11', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 11), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 11), true);
        });

        test('Day 220816 - mediumList - 12', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 12), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 12), true);
        });

        test('Day 220816 - mediumList - 13', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 13), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 13), true);
        });

        test('Day 220816 - mediumList - 14', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 14), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 14), true);
        });

        test('Day 220816 - mediumList - 15', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 15), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 15), true);
        });

        test('Day 220816 - mediumList - 16', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 16), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 16), false);
        });

        test('Day 220816 - mediumList - 17', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 17), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 17), false);
        });

        test('Day 220816 - mediumList - 18', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 18), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 18), false);
        });

        test('Day 220816 - mediumList - 19', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 19), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 19), false);
        });

        test('Day 220816 - mediumList - 20', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 20), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 20), false);
        });

        test('Day 220816 - mediumList - 21', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 21), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 21), false);
        });

        test('Day 220816 - mediumList - 22', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(mediumList, 22), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(mediumList, 22), false);
        });
      });

      group('Day 220816 - odd', () {
        const oddList = <int>[1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

        test('Day 220816 - oddList - 0', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 0), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 0), false);
        });

        test('Day 220816 - oddList - 1', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 1), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 1), false);
        });

        test('Day 220816 - oddList - 2', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 2), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 2), false);
        });

        test('Day 220816 - oddList - 3', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 3), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 3), false);
        });

        test('Day 220816 - oddList - 4', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 4), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 4), true);
        });

        test('Day 220816 - oddList - 5', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 5), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 5), false);
        });

        test('Day 220816 - oddList - 6', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 6), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 6), true);
        });

        test('Day 220816 - oddList - 7', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 7), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 7), false);
        });

        test('Day 220816 - oddList - 8', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 8), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 8), true);
        });

        test('Day 220816 - oddList - 9', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 9), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 9), false);
        });

        test('Day 220816 - oddList - 10', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 10), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 10), true);
        });

        test('Day 220816 - oddList - 11', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 11), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 11), false);
        });

        test('Day 220816 - oddList - 12', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 12), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 12), true);
        });

        test('Day 220816 - oddList - 13', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 13), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 13), false);
        });

        test('Day 220816 - oddList - 14', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 14), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 14), true);
        });

        test('Day 220816 - oddList - 15', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 15), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 15), false);
        });

        test('Day 220816 - oddList - 16', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 16), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 16), true);
        });

        test('Day 220816 - oddList - 17', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 17), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 17), false);
        });

        test('Day 220816 - oddList - 18', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 18), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 18), true);
        });

        test('Day 220816 - oddList - 19', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 19), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 19), false);
        });

        test('Day 220816 - oddList - 20', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 20), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 20), true);
        });

        test('Day 220816 - oddList - 21', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 21), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 21), false);
        });

        test('Day 220816 - oddList - 22', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 22), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 22), true);
        });

        test('Day 220816 - oddList - 23', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 23), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 23), false);
        });

        test('Day 220816 - oddList - 24', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 24), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 24), true);
        });

        test('Day 220816 - oddList - 25', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 25), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 25), false);
        });

        test('Day 220816 - oddList - 26', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 26), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 26), true);
        });

        test('Day 220816 - oddList - 27', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 27), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 27), false);
        });

        test('Day 220816 - oddList - 28', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 28), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 28), true);
        });

        test('Day 220816 - oddList - 29', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 29), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 29), false);
        });

        test('Day 220816 - oddList - 30', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 30), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 30), true);
        });

        test('Day 220816 - oddList - 31', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 31), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 31), false);
        });

        test('Day 220816 - oddList - 32', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 32), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 32), true);
        });

        test('Day 220816 - oddList - 33', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 33), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 33), false);
        });

        test('Day 220816 - oddList - 34', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 34), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 34), true);
        });

        test('Day 220816 - oddList - 35', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 35), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 35), false);
        });

        test('Day 220816 - oddList - 36', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 36), true);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 36), true);
        });

        test('Day 220816 - oddList - 37', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 37), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 37), false);
        });

        test('Day 220816 - oddList - 38', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 38), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 38), false);
        });

        test('Day 220816 - oddList - 39', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 39), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 39), false);
        });

        test('Day 220816 - oddList - 40', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 40), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 40), false);
        });

        test('Day 220816 - oddList - 41', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 41), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 41), false);
        });

        test('Day 220816 - oddList - 42', () {
          expect(reason: 'BrFo', twoAddUpToKbrutForce(oddList, 42), false);
          expect(reason: 'twoAddUpToK', twoAddUpToK(oddList, 42), false);
        });
      });

      group('Day 220816 - random _count_X_max_X_times', () {
        List<int> randomList(int count, int max) {
          final list = <int>[];
          for (var i = 0; i < count; i++) {
            list.add(Random().nextInt(max));
          }
          return list;
        }

        int randomNumber(int max) => Random().nextInt(max * 2);

        bool testThis<T>({
          required int count,
          required int max,
          required int times,
        }) {
          final list = randomList(count, max);
          var time1 = 0;
          var time2 = 0;
          for (var i = 0; i < times; i++) {
            final number = randomNumber(max);
            final t1 = DateTime.now();
            final result1 = twoAddUpToK(list, number);
            final t2 = DateTime.now();
            final result2 = twoAddUpToKbrutForce(list, number);
            final t3 = DateTime.now();
            time1 += t2.difference(t1).inMicroseconds;
            time2 += t3.difference(t2).inMicroseconds;

            if (result1 != result2) return false;
          }
          print('twoAddUpToK took $time1 microseconds in total');
          print('BrutForce took $time2 microseconds in total');
          print('twoAddUpToK was ${time2 ~/ (time1 + 1)} '
              'times faster than BrutForce');
          return true;
        }

        group('Day 220816 - random 10x100', () {
          test('Day 220816 - random 10x100x1', () {
            expect(testThis(count: 10, max: 100, times: 1), true);
          });

          test('Day 220816 - random 10x100x100', () {
            expect(testThis(count: 10, max: 100, times: 100), true);
          });
        });

        group('Day 220816 - random 100x100', () {
          test('Day 220816 - random 100x100x1', () {
            expect(testThis(count: 100, max: 100, times: 1), true);
          });

          test('Day 220816 - random 100x100x100', () {
            expect(testThis(count: 100, max: 100, times: 100), true);
          });

          test('Day 220816 - random 100x100x1000', () {
            expect(testThis(count: 100, max: 100, times: 1000), true);
          });
        });

        group('Day 220816 - random 1000x1000', () {
          test('Day 220816 - random 1000x1000x1', () {
            expect(testThis(count: 1000, max: 1000, times: 1), true);
          });

          test('Day 220816 - random 1000x1000x100', () {
            expect(testThis(count: 1000, max: 1000, times: 100), true);
          });

          test('Day 220816 - random 1000x1000x1000', () {
            expect(testThis(count: 1000, max: 1000, times: 1000), true);
          });
        });

        group('Day 220816 - random 1000x10000', () {
          test('Day 220816 - random 1000x10000x1', () {
            expect(testThis(count: 1000, max: 10000, times: 1), true);
          });

          test('Day 220816 - random 1000x10000x100', () {
            expect(testThis(count: 1000, max: 10000, times: 100), true);
          });

          test('Day 220816 - random 1000x10000x1000', () {
            expect(testThis(count: 1000, max: 10000, times: 1000), true);
          });

          test('Day 220816 - random 1000x10000x10000', () {
            expect(testThis(count: 1000, max: 10000, times: 10000), true);
          });
        });
      });
    });
  });
}

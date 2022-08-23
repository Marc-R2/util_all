import 'package:test/test.dart';
import '../../bin/220822/main_220822.dart';

void main() {
  group('Day 6 - 220822', () {
    test('Day 220822 - doSomething', () {
      expect(doSomething(), '220822');
    });

    group('Day 6 - 220822 - Basic Testing', () {
      test('Day 6 - 220822 - Basic Testing - *1*', () {
        final res1 = countDecodeVariants('1');
        final res2 = fastCountDecodeVariants('1');
        final res3 = listDecodeVariants('1');

        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['a']);
      });

      test('Day 6 - 220822 - Basic Testing - *2*', () {
        final res1 = countDecodeVariants('2');
        final res2 = fastCountDecodeVariants('2');
        final res3 = listDecodeVariants('2');

        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['b']);
      });

      test('Day 6 - 220822 - Basic Testing - *3*', () {
        final res1 = countDecodeVariants('3');
        final res2 = fastCountDecodeVariants('3');
        final res3 = listDecodeVariants('3');

        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['c']);
      });

      test('Day 6 - 220822 - Basic Testing - *4*', () {
        final res1 = countDecodeVariants('4');
        final res2 = fastCountDecodeVariants('4');
        final res3 = listDecodeVariants('4');

        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['d']);
      });

      test('Day 6 - 220822 - Basic Testing - *5*', () {
        final res1 = countDecodeVariants('5');
        final res2 = fastCountDecodeVariants('5');
        final res3 = listDecodeVariants('5');

        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['e']);
      });

      test('Day 6 - 220822 - Basic Testing - *6*', () {
        final res1 = countDecodeVariants('6');
        final res2 = fastCountDecodeVariants('6');
        final res3 = listDecodeVariants('6');

        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['f']);
      });

      test('Day 6 - 220822 - Basic Testing - *7*', () {
        final res1 = countDecodeVariants('7');
        final res2 = fastCountDecodeVariants('7');
        final res3 = listDecodeVariants('7');
        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['g']);
      });

      test('Day 6 - 220822 - Basic Testing - *8*', () {
        final res1 = countDecodeVariants('8');
        final res2 = fastCountDecodeVariants('8');
        final res3 = listDecodeVariants('8');
        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['h']);
      });

      test('Day 6 - 220822 - Basic Testing - *9*', () {
        final res1 = countDecodeVariants('9');
        final res2 = fastCountDecodeVariants('9');
        final res3 = listDecodeVariants('9');
        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['i']);
      });

      test('Day 6 - 220822 - Basic Testing - *10*', () {
        final res1 = countDecodeVariants('10');
        final res2 = fastCountDecodeVariants('10');
        final res3 = listDecodeVariants('10');
        expect(res1, res2);
        expect(res1, 1);
        expect(res2, 1);
        expect(res3.length, 1);
        expect(res3, ['j']);
      });

      test('Day 6 - 220822 - Basic Testing - *11*', () {
        final res1 = countDecodeVariants('11');
        final res2 = fastCountDecodeVariants('11');
        final res3 = listDecodeVariants('11');

        expect(res1, res2);
        expect(res1, 2);
        expect(res2, 2);
        expect(res3.length, 2);
        expect(res3, ['aa', 'k']);
      });

      test('Day 6 - 220822 - Basic Testing - *111*', () {
        final res1 = countDecodeVariants('111');
        final res2 = fastCountDecodeVariants('111');
        final res3 = listDecodeVariants('111');

        expect(res1, res2);
        expect(res1, 3);
        expect(res2, 3);
        expect(res3.length, 3);
        expect(res3, ['aaa', 'ak', 'ka']);
      });

      test('Day 6 - 220822 - Basic Testing - *1111*', () {
        final res1 = countDecodeVariants('1111');
        final res2 = fastCountDecodeVariants('1111');
        final res3 = listDecodeVariants('1111');

        expect(res1, res2);
        expect(res1, 5);
        expect(res2, 5);
        expect(res3.length, 5);
        expect(res3, ['aaaa', 'aak', 'aka', 'kaa', 'kk']);
      });

      test('Day 6 - 220822 - Basic Testing - *11111*', () {
        final res1 = countDecodeVariants('11111');
        final res2 = fastCountDecodeVariants('11111');
        final res3 = listDecodeVariants('11111');

        expect(res1, res2);
        expect(res1, 8);
        expect(res2, 8);
        expect(res3.length, 8);
        expect(res3, [
          'aaaaa',
          'aaak',
          'aaka',
          'akaa',
          'akk',
          'kaaa',
          'kak',
          'kka',
        ]);
      });
    });
  });
}

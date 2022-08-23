import 'package:test/test.dart';
import '../../bin/220823/main_220823.dart';

void main() {
  group('Day 7 - 220823 - UniValTrees', () {
    test('Day 220823 - doSomething', () {
      expect(doSomething(), '220823');
    });

    group('Day 7 - 220823 - UniValTree - Nodes - isUniVal', () {
      test('Day 220823 - Node - empty', () {
        const node = Node(value: 0);
        print(node.printTree());
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - left - true', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
        );
        print(node.printTree());
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - left - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - right - true', () {
        const node = Node(
          value: 0,
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - right - false', () {
        const node = Node(
          value: 0,
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 000 - true', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - both 001 - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 010 - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 011 - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 100 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 101 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 110 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 111 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.isUniVal, true);
      });
    });
    group('Day 7 - 220823 - UniValTree - Nodes - countUniVal()', () {
      test('Day 220823 - Node - empty - 1', () {
        const node = Node(value: 0);
        print(node.printTree());
        expect(node.countUniVal(), 1);
      });

      test('Day 220823 - Node - left - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - left - 1', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 1);
      });

      test('Day 220823 - Node - right - 2', () {
        const node = Node(
          value: 0,
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - right - 1', () {
        const node = Node(
          value: 0,
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 1);
      });

      test('Day 220823 - Node - 000 - 3', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 001 - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 010 - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 011 - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 100 - 2', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 101 - 2', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 110 - 2', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 111 - 3', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 0000 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 0001 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 0010 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 0011 - 2', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 0100 - 2', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 0101 - 2', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 0110 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 0111 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 1000 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 1001 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 1010 - 2', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 1011 - 2', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 1100 - 2', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 1101 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 1110 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 1111 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 00000 - 5', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 5);
      });

      test('Day 220823 - Node - 00001 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 00010 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 00011 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 00100 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 00101 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 00110 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 00111 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01000 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01001 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01010 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01011 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01100 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01101 - 3', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 01110 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 01111 - 4', () {
        const node = Node(
          value: 0,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 10000 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 10001 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 10010 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 10011 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 10100 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 10101 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 10110 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 10111 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 0,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 11000 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 11001 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 11010 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 11011 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 0),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 11100 - 3', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 11101 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 0),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 11110 - 4', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 0),
        );
        print(node.printTree());
        expect(node.countUniVal(), 4);
      });

      test('Day 220823 - Node - 11111 - 5', () {
        const node = Node(
          value: 1,
          left: Node(
            value: 1,
            left: Node(value: 1),
            right: Node(value: 1),
          ),
          right: Node(value: 1),
        );
        print(node.printTree());
        expect(node.countUniVal(), 5);
      });
    });
  });
}

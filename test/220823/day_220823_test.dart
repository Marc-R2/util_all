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
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - left - true', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
        );
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - left - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - right - true', () {
        const node = Node(
          value: 0,
          right: Node(value: 0),
        );
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - right - false', () {
        const node = Node(
          value: 0,
          right: Node(value: 1),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 000 - true', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        expect(node.isUniVal, true);
      });

      test('Day 220823 - Node - both 001 - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 010 - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 011 - false', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 100 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 101 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 110 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        expect(node.isUniVal, false);
      });

      test('Day 220823 - Node - both 111 - false', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        expect(node.isUniVal, true);
      });
    });
    group('Day 7 - 220823 - UniValTree - Nodes - countUniVal()', () {
      test('Day 220823 - Node - empty - 1', () {
        const node = Node(value: 0);
        expect(node.countUniVal(), 1);
      });

      test('Day 220823 - Node - left - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - left - 1', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
        );
        expect(node.countUniVal(), 1);
      });

      test('Day 220823 - Node - right - 2', () {
        const node = Node(
          value: 0,
          right: Node(value: 0),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - right - 1', () {
        const node = Node(
          value: 0,
          right: Node(value: 1),
        );
        expect(node.countUniVal(), 1);
      });

      test('Day 220823 - Node - 000 - 3', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        expect(node.countUniVal(), 3);
      });

      test('Day 220823 - Node - 001 - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 010 - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 011 - 2', () {
        const node = Node(
          value: 0,
          left: Node(value: 1),
          right: Node(value: 1),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 100 - 2', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 0),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 101 - 2', () {
        const node = Node(
          value: 1,
          left: Node(value: 0),
          right: Node(value: 1),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 110 - 2', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 0),
        );
        expect(node.countUniVal(), 2);
      });

      test('Day 220823 - Node - 111 - 3', () {
        const node = Node(
          value: 1,
          left: Node(value: 1),
          right: Node(value: 1),
        );
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
        expect(node.countUniVal(), 4);
      });
    });
  });
}

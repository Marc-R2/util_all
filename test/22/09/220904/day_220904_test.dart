import 'package:test/test.dart';
import '../../../../bin/22/09/220904/main_220904.dart';

void main() {
  group('Day 19 - 220904', () {
    test('Day 220904 - doSomething', () {
      expect(doSomething(), '220904');
    });

    test('Day 220904 - ListNode 001', () {
      const pair = ListNode(8, ListNode(10));
      const list1 = ListNode(3, ListNode(7, pair));
      const list2 = ListNode(99, ListNode(1, pair));
      expect(list1.toString(), '3, 7, 8, 10');
      expect(list2.toString(), '99, 1, 8, 10');
      expect(ListNode.findFirstIntersection(list1, list2), 8);
    });

    test('Day 220904 - ListNode 002', () {
      const pair = ListNode(8, ListNode(10));
      const list1 = ListNode(3, ListNode(7, pair));
      const list2 = ListNode(99, ListNode(1, ListNode(8, ListNode(10))));
      expect(list1.toString(), '3, 7, 8, 10');
      expect(list2.toString(), '99, 1, 8, 10');
      expect(ListNode.findFirstIntersection(list1, list2), 8);
    });

    test('Day 220904 - ListNode 003', () {
      const pair = ListNode(8, ListNode(10));
      const list1 = ListNode(3, ListNode(7, ListNode(8, ListNode(10))));
      const list2 = ListNode(99, ListNode(1, pair));
      expect(list1.toString(), '3, 7, 8, 10');
      expect(list2.toString(), '99, 1, 8, 10');
      expect(ListNode.findFirstIntersection(list1, list2), 8);
    });

    test('Day 220904 - ListNode 004', () {
      const list1 = ListNode(3, ListNode(7, ListNode(8, ListNode(10))));
      const list2 = ListNode(99, ListNode(1, ListNode(8, ListNode(10))));
      expect(list1.toString(), '3, 7, 8, 10');
      expect(list2.toString(), '99, 1, 8, 10');
      expect(ListNode.findFirstIntersection(list1, list2), 8);
    });

    test('Day 220904 - ListNode 005', () {
      const list1 = ListNode(3, ListNode(7, ListNode(9, ListNode(10))));
      const list2 = ListNode(99, ListNode(1, ListNode(8, ListNode(10))));
      expect(list1.toString(), '3, 7, 9, 10');
      expect(list2.toString(), '99, 1, 8, 10');
      expect(ListNode.findFirstIntersection(list1, list2), 10);
    });

    test('Day 220904 - ListNode 006', () {
      const list1 = ListNode(3, ListNode(7, ListNode(9, ListNode(10))));
      const list2 = ListNode(99, ListNode(1, ListNode(8, ListNode(11))));
      expect(list1.toString(), '3, 7, 9, 10');
      expect(list2.toString(), '99, 1, 8, 11');
      expect(ListNode.findFirstIntersection(list1, list2), -1);
    });

    test('Day 220904 - ListNode 007', () {
      const list1 = ListNode(3, ListNode(7, ListNode(9, ListNode(10))));
      const list2 = ListNode(99, ListNode(7, ListNode(8, ListNode(11))));
      expect(list1.toString(), '3, 7, 9, 10');
      expect(list2.toString(), '99, 7, 8, 11');
      expect(ListNode.findFirstIntersection(list1, list2), -1);
    });

    test('Day 220904 - ListNode 008', () {
      const list1 = ListNode(3, ListNode(7, ListNode(9, ListNode(10))));
      const list2 = ListNode(99, ListNode(7, ListNode(9, ListNode(11))));
      expect(list1.toString(), '3, 7, 9, 10');
      expect(list2.toString(), '99, 7, 9, 11');
      expect(ListNode.findFirstIntersection(list1, list2), -1);
    });

    test('Day 220904 - ListNode 009', () {
      const list1 = ListNode(3, ListNode(7, ListNode(9, ListNode(10))));
      const list2 = ListNode(99, ListNode(7, ListNode(9, ListNode(10))));
      expect(list1.toString(), '3, 7, 9, 10');
      expect(list2.toString(), '99, 7, 9, 10');
      expect(ListNode.findFirstIntersection(list1, list2), 7);
    });
  });
}

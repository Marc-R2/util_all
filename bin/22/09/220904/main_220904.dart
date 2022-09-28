void main() {
  print('Day 19 - 220904');
  const pair = ListNode(8, ListNode(10));

  const list1 = ListNode(3, ListNode(7, pair));
  const list2 = ListNode(99, ListNode(1, pair));

  print(list1);
  print(list2);
  
  print(ListNode.findFirstIntersection(list1, list2));
}

String doSomething() => '220904';

class ListNode {
  final int data;
  final ListNode? next;

  const ListNode(this.data, [this.next]);

  @override
  String toString() => next == null ? '$data' : '$data, $next';

  static int? findFirstIntersection(ListNode list1, ListNode list2) {
    final l1 = list1.next ?? list1;
    final l2 = list2.next ?? list2;
    if (!(list1.next == null && list2.next == null)) {
      final res = findFirstIntersection(l1, l2);
      if (res != null) return res;
    }
    if (l1.data == l2.data) return null;
    return l1.next != null ? l1.next!.data : null;
  }
}

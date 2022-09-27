void main() {
  print('Day 7 - 220823');

  print(sampleTree.isUniVal);
  print(sampleTree.countUniVal());
}

String doSomething() => '220823';

class Node<T> {
  const Node({
    required this.value,
    this.left,
    this.right,
  });

  final T value;

  final Node<T>? left;

  final Node<T>? right;

  bool get isUniVal =>
      (left == null || left!.value == value) &&
      (right == null || right!.value == value);

  int countUniVal() {
    var counter = isUniVal ? 1 : 0;
    if (left != null) counter += left!.countUniVal();
    if (right != null) counter += right!.countUniVal();
    return counter;
  }

  String printTree() {
    final sb = StringBuffer();
    printTreeRec(sb, 0);
    return sb.toString();
  }

  void printTreeRec(StringBuffer sb, int depth) {
    sb.write('${'--' * depth}>');
    if (isUniVal) {
      sb.write('[$value]');
    } else {
      sb.write(' $value ');
    }
    sb.write('\n');
    if (left != null) left!.printTreeRec(sb, depth + 1);
    if (right != null) right!.printTreeRec(sb, depth + 1);
  }
}

const sampleTree = Node<int>(
  value: 0,
  left: Node(value: 1),
  right: Node(
    value: 0,
    left: Node(
      value: 1,
      left: Node(value: 1),
      right: Node(value: 1),
    ),
    right: Node(value: 0),
  ),
);

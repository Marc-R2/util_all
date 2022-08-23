void main() {
  print('Day 7 - 220823');
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

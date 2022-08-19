import 'dart:convert';

void main() {
  print('Day 2 - 220818');

  final rootNode = Node(
    value: 'root',
    left: Node(
      value: 'left',
      left: Node(value: 'left.left'),
    ),
    right: Node(value: 'right'),
  );

  final node = deserialize(serialize(rootNode));
  print(node!.left!.left!.value);
}

String doSomething() => '220818';

class Node {
  Node({
    required this.value,
    this.left,
    this.right,
  });

  String value;
  Node? left;
  Node? right;
}

String serialize(Node? node) {
  if (node == null) return '';
  final map = <String, String>{};
  map['value'] = node.value;
  map['left'] = serialize(node.left);
  map['right'] = serialize(node.right);
  return jsonEncode(map);
}

Node? deserialize(String? str) {
  if (str == null || str == '') return null;
  final map = jsonDecode(str);
  if (map is Map) {
    return Node(
      value: map['value'].toString(),
      left: deserialize(map['left'].toString()),
      right: deserialize(map['right'].toString()),
    );
  }
}

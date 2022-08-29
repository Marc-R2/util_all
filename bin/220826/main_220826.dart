void main() {
  print('Day 10 - 220826');

  final tree = StringSearchTree(['dog', 'deer', 'deal']);
  print(tree.root);
  print(tree.root.buildAll());
  print(tree.search('e'));
}

String doSomething() => '220826';

class StringSearchTree {
  StringSearchTree([List<String> words = const []]) {
    for (final word in words) {
      addWord(word);
    }
  }

  StringSearchNode root = StringSearchNode('');

  void addWord(String word) => root.addSubWord(word, 0);

  List<String> search(String query) {
    final res = root.search(query, 0);
    return res.map((e) => query + e).toList();
  }
}

class StringSearchNode {
  StringSearchNode(this.char);

  String char;

  Map<String, StringSearchNode> children = {};

  StringSearchNode addChild(String child) {
    return children[child] ??= StringSearchNode(child);
  }

  StringSearchNode? getChild(String char) => children[char];

  void addSubWord(String word, int index) {
    if (index >= word.length) return;
    addChild(word[index]).addSubWord(word, index + 1);
  }

  List<String> buildAll() {
    final res = <String>[];
    children.forEach((key, value) {
      final childRes = value.buildAll();
      for (final lRes in childRes) {
        res.add('$key$lRes');
      }
      if (res.isEmpty) res.add(key);
    });
    return res;
  }

  List<String> search(String query, int index) {
    if (index >= query.length) return buildAll();
    final child = getChild(query[index]);
    if (child == null) return [];
    return child.search(query, index + 1);
  }

  @override
  String toString() => '$char => $children';
}

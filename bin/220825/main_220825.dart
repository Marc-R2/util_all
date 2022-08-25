void main() async {
  print('Day 9 - 220825');

  await runInSomeMilliseconds(f: () => print('abc'), ms: 4321);
}

String doSomething() => '220825';

Future<void> runInSomeMilliseconds({
  required void Function() f,
  required int ms,
}) {
  return Future<void>.delayed(Duration(milliseconds: ms)).then(
    (_) => f.call(),
  );
}

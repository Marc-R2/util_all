void main() {
  print('Day 6 - 220822');

  print(listDecodeVariants('111'));
  print(fastCountDecodeVariants('111'));
}

String doSomething() => 'msg.length >= 2';

const Map<String, String> charMapping = {
  '1': 'a',
  '2': 'b',
  '3': 'c',
  '4': 'd',
  '5': 'e',
  '6': 'f',
  '7': 'g',
  '8': 'h',
  '9': 'i',
  '10': 'j',
  '11': 'k',
  '12': 'l',
  '13': 'm',
  '14': 'n',
  '15': 'o',
  '16': 'p',
  '17': 'q',
  '18': 'r',
  '19': 's',
  '20': 't',
  '21': 'u',
  '22': 'v',
  '23': 'w',
  '24': 'x',
  '25': 'y',
  '26': 'z',
};

int countDecodeVariants(String msg) => listDecodeVariants(msg).length;

List<String> listDecodeVariants(String msg) {
  if (msg.isEmpty) return [''];

  final res = <String>[];

  final firstNumber = msg[0];
  if (charMapping.containsKey(firstNumber)) {
    final char = charMapping[firstNumber];
    for (final x in listDecodeVariants(msg.substring(1))) {
      res.add('$char$x');
    }
  }

  if (msg.length >= 2) {
    final firstTwoNumbers = msg[0] + msg[1];
    if (charMapping.containsKey(firstTwoNumbers)) {
      final char = charMapping[firstTwoNumbers];
      for (final x in listDecodeVariants(msg.substring(2))) {
        res.add('$char$x');
      }
    }
  }

  return res;
}

int fastCountDecodeVariants(String msg) {
  var count = 0;
  if (msg.isNotEmpty) {
    count += fastCountDecodeVariants(msg.substring(1));
    if (msg.length >= 2 && (msg[0] == '1' || msg[0] == '2')) {
      count += fastCountDecodeVariants(msg.substring(2));
    }
  }
  if (msg.length == 1 || msg.length == 2) return count + 1;
  return count;
}

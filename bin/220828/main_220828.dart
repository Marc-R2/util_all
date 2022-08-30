void main() {
  print('Day 12 - 220828');

  print(findLargestSubstring('cabacabbbac', 2));
}

String doSomething() => '220828';

String findLargestSubstring(String s, int k) {
  var subStringStart = 0;
  var subStringEnd = 0;
  var longestStart = 0;
  var longestEnd = 0;
  var lastCut = 0;
  var lastChange = 0;
  final chars = <String>[];

  for (var i = 0; i < s.length; i++) {
    final char = s[i];
    final contained = chars.contains(char);
    if (!contained) {
      chars.add(char);
      if (chars.length < k) {
        lastCut = lastChange;
        lastChange = i;
      } else {
        chars.removeAt(0);
        lastCut = lastChange;
        lastChange = i;
        subStringStart = lastCut;
      }
    }
    subStringEnd += 1;
    if (subStringEnd - subStringStart > longestEnd - longestStart) {
      longestEnd = subStringEnd;
      longestStart = subStringStart;
    }
  }

  return s.substring(longestStart, longestEnd);
}

part of '../util_all.dart';

Future<void> main() async {
  final currentPath = Directory.current.path;
  await makeDirectoryStructForDay(
    pathToHome: currentPath,
    date: DateTime.now().subtract(const Duration(days: 1)),
  );
}

Future<void> makeDirectoryStructForDay({
  required String pathToHome,
  required DateTime date,
}) async {
  // Name for the day
  // Format: YYMMDD - 220816
  final year = date.year.toString().substring(2);
  final month = date.month.toString().padLeft(2, '0');
  final day = date.day.toString().padLeft(2, '0');
  final dayName = year + month + day;

  final daysPassed = DateTime(2022, 8, 16).difference(date).inDays * -1;

  // Create all directories for the day
  mkDirSync('$pathToHome/bin/$year/$month/$dayName');
  mkDirSync('$pathToHome/test/$year/$month/$dayName');

  // Create the main file for the day
  final mainFile = '$pathToHome/bin/$year/$month/$dayName/main_$dayName.dart';
  final mainFileContent = '''
void main() {
  print('Day $daysPassed - $dayName');
}

String doSomething() => '$dayName';
''';

  final testFile = '$pathToHome/test/$year/$month/$dayName/day_${dayName}_test.dart';
  final testFileContent = '''
import 'package:test/test.dart';
import '../../../../bin/$year/$month/$dayName/main_$dayName.dart';

void main() {
  group('Day $daysPassed - $year/$month/$dayName', () {
    test('Day $year/$month/$dayName - doSomething', () {
      expect(doSomething(), '$year/$month/$dayName');
    });
  });
}
''';

  // Write the files
  await writeTextToFile(mainFile, mainFileContent);
  await writeTextToFile(testFile, testFileContent);

  // Add import to util_all_test.dart
  final utilAllTestFile = '$pathToHome/test/util_all_test.dart';
  await replaceTextInFile(
    path: utilAllTestFile,
    oldText: '// nextImport',
    itNotContains:
        "import '$year/$month/$dayName/day_${dayName}_test.dart' as test$dayName;",
    newText:
        "import '$year/$month/$dayName/day_${dayName}_test.dart' as test$dayName;\n// nextImport",
  );
  await replaceTextInFile(
    path: utilAllTestFile,
    oldText: '// nextMain',
    itNotContains: 'test$dayName.main();',
    newText: 'test$dayName.main();\n  // nextMain',
  );

  // Add test to github workflow dart.yml
  final githubWorkflowFile = '$pathToHome/.github/workflows/dart.yml';
  await replaceTextInFile(
    path: githubWorkflowFile,
    oldText: '# nextUnittest',
    itNotContains: 'dart test test/$year/$month/$dayName/day_${dayName}_test.dart',
    newText: '''
- name: Run tests for Day $daysPassed - $dayName
        run: dart test test/$year/$month/$dayName/day_${dayName}_test.dart
        
      # nextUnittest''',
  );

  // Add a README.md to the day's directory
  final taskFile = '$pathToHome/bin/$year/$month/$dayName/README.md';
  await writeTextToFile(
    taskFile,
    '# Day $daysPassed - $dayName\n\n## Task:\n\n',
  );
}

/// Create a directory if it doesn't exist
Directory mkDirSync(String path) {
  final dir = Directory(path.replaceAll('//', '/'));
  if (!dir.existsSync()) dir.createSync(recursive: true);
  return dir;
}

/// Replace text in a file
Future<void> replaceTextInFile({
  required String path,
  required String oldText,
  required String newText,
  String? itNotContains,
}) async {
  final file = File(path);
  final contents = await file.readAsString();

  if (itNotContains != null) {
    if (contents.contains(itNotContains)) return;
  }

  final newContents = contents.replaceAll(oldText, newText);
  await file.writeAsString(newContents);
}

/// Write text to a file
Future<void> writeTextToFile(
  String path,
  String text, {
  bool override = false,
}) async {
  final file = File(path.replaceAll('//', '/'));
  if (file.existsSync() && !override) return;
  if (!file.existsSync()) file.createSync(recursive: true);
  await file.writeAsString(text);
}

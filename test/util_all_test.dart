/// Do NOT manually edit this file!
import 'package:util_all/util_all.dart';

// nextImport

Future<void> main() async {
  // Make sure the current and next directories are created
  await makeDirectoryStructForDay(
    pathToHome: './',
    day: DateTime.now(),
  );

  await makeDirectoryStructForDay(
    pathToHome: '../',
    day: DateTime.now().add(const Duration(days: 1)),
  );

  // Test all the days
  // nextMain
}

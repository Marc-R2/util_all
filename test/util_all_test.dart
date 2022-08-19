/// Do NOT manually edit this file!
import 'package:util_all/util_all.dart';

import '220816/day_220816_test.dart' as test220816;
import '220817/day_220817_test.dart' as test220817;
import '220819/day_220819_test.dart' as test220819;
import '220818/day_220818_test.dart' as test220818;
// nextImport

Future<void> main() async {
  // Make sure the current and next directories are created
  await makeDirectoryStructForDay(
    pathToHome: './',
    day: DateTime.now(),
  );

  await makeDirectoryStructForDay(
    pathToHome: './',
    day: DateTime.now().add(const Duration(days: 1)),
  );

  // Test all the days
  test220816.main();
  test220817.main();
  test220819.main();
  test220818.main();
  // nextMain
}

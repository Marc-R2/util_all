/// Do NOT manually edit this file!
import 'package:util_all/util_all.dart';

import '220816/day_220816_test.dart' as test220816;
import '220817/day_220817_test.dart' as test220817;
import '220818/day_220818_test.dart' as test220818;
import '220819/day_220819_test.dart' as test220819;
import '220820/day_220820_test.dart' as test220820;
import '220821/day_220821_test.dart' as test220821;
import '220822/day_220822_test.dart' as test220822;
import '220823/day_220823_test.dart' as test220823;
import '220824/day_220824_test.dart' as test220824;
import '220825/day_220825_test.dart' as test220825;
// nextImport

Future<void> main() async {
  // Make sure the current and next directories are created
  await makeDirectoryStructForDay(
    pathToHome: './',
    day: DateTime.now().subtract(const Duration(days: 1)),
  );

  await makeDirectoryStructForDay(
    pathToHome: './',
    day: DateTime.now(),
  );

  // Test all the days
  test220816.main();
  test220817.main();
  test220818.main();
  test220819.main();
  test220820.main();
  test220821.main();
  test220822.main();
  test220823.main();
  test220824.main();
  test220825.main();
  // nextMain
}

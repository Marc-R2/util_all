/// Do NOT manually edit this file!
import 'package:util_all/util_all.dart';

import '22/08/220816/day_220816_test.dart' as test220816;
import '22/08/220817/day_220817_test.dart' as test220817;
import '22/08/220818/day_220818_test.dart' as test220818;
import '22/08/220819/day_220819_test.dart' as test220819;
import '22/08/220820/day_220820_test.dart' as test220820;
import '22/08/220821/day_220821_test.dart' as test220821;
import '22/08/220822/day_220822_test.dart' as test220822;
import '22/08/220823/day_220823_test.dart' as test220823;
import '22/08/220824/day_220824_test.dart' as test220824;
// nextImport

Future<void> main() async {
  // Make sure the current and next directories are created

  // Days since 2022-08-16
  final days = DateTime.now().difference(DateTime(2022, 8, 16)).inDays;

  for (var i = 0; i <= days; i++) {
    await makeDirectoryStructForDay(
      pathToHome: './',
      date: DateTime.now().subtract(Duration(days: days - i)),
    );
  }

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
  // nextMain
}

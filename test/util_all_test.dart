/// Do NOT manually edit this file!
import 'package:test/test.dart';
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
import '22/08/220825/day_220825_test.dart' as test220825;
import '22/08/220826/day_220826_test.dart' as test220826;
import '22/08/220827/day_220827_test.dart' as test220827;
import '22/08/220828/day_220828_test.dart' as test220828;
import '22/08/220829/day_220829_test.dart' as test220829;
import '22/08/220830/day_220830_test.dart' as test220830;
import '22/08/220831/day_220831_test.dart' as test220831;
import '22/09/220901/day_220901_test.dart' as test220901;
import '22/09/220902/day_220902_test.dart' as test220902;
import '22/09/220903/day_220903_test.dart' as test220903;
import '22/09/220904/day_220904_test.dart' as test220904;
import '22/09/220905/day_220905_test.dart' as test220905;
import '22/09/220906/day_220906_test.dart' as test220906;
import '22/09/220907/day_220907_test.dart' as test220907;
import '22/09/220908/day_220908_test.dart' as test220908;
import '22/09/220909/day_220909_test.dart' as test220909;
import '22/09/220910/day_220910_test.dart' as test220910;
import '22/09/220911/day_220911_test.dart' as test220911;
import '22/09/220912/day_220912_test.dart' as test220912;
import '22/09/220913/day_220913_test.dart' as test220913;
import '22/09/220914/day_220914_test.dart' as test220914;
import '22/09/220915/day_220915_test.dart' as test220915;
import '22/09/220916/day_220916_test.dart' as test220916;
import '22/09/220917/day_220917_test.dart' as test220917;
import '22/09/220918/day_220918_test.dart' as test220918;
import '22/09/220919/day_220919_test.dart' as test220919;
import '22/09/220920/day_220920_test.dart' as test220920;
import '22/09/220921/day_220921_test.dart' as test220921;
import '22/09/220922/day_220922_test.dart' as test220922;
import '22/09/220923/day_220923_test.dart' as test220923;
import '22/09/220924/day_220924_test.dart' as test220924;
import '22/09/220925/day_220925_test.dart' as test220925;
import '22/09/220926/day_220926_test.dart' as test220926;
// nextImport

Future<void> main() async {
  // Make sure the current and next directories are created

  test('Build', () async {
    // Days since 2022-08-16
    final days = DateTime.now().difference(DateTime(2022, 8, 16)).inDays;

    for (var i = 0; i <= days; i++) {
      await makeDirectoryStructForDay(
        pathToHome: './',
        date: DateTime.now().subtract(Duration(days: days - i)),
      );
    }
  });

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
  test220826.main();
  test220827.main();
  test220828.main();
  test220829.main();
  test220830.main();
  test220831.main();
  test220901.main();
  test220902.main();
  test220903.main();
  test220904.main();
  test220905.main();
  test220906.main();
  test220907.main();
  test220908.main();
  test220909.main();
  test220910.main();
  test220911.main();
  test220912.main();
  test220913.main();
  test220914.main();
  test220915.main();
  test220916.main();
  test220917.main();
  test220918.main();
  test220919.main();
  test220920.main();
  test220921.main();
  test220922.main();
  test220923.main();
  test220924.main();
  test220925.main();
  test220926.main();
  // nextMain
}

import 'package:test/test.dart';
import '../../bin/220822/main_220822.dart';

void main() {
  group('Day 6 - 220822', () {
    test('Day 220822 - doSomething', () {
      expect(doSomething(), '220822');
    });

    group('Day 6 - 220822 - Basic Testing', () {
      void testIt({
        required String msg,
        required int resLen,
        required List<String> resList,
      }) {
        final res1 = countDecodeVariants(msg);
        final res2 = fastCountDecodeVariants(msg);
        final res3 = listDecodeVariants(msg);

        print('$msg - $res1($resLen) - $res2($resLen) - $res3($resList)');

        expect(res1, resLen, reason: 'countDecodeVariants');
        expect(res2, resLen, reason: 'fastCountDecodeVariants');
        expect(res1, res2, reason: 'same check');
        expect(res3.length, resLen);
        expect(res3, resList);
      }

      test('Day 6 - 220822 - Basic Testing - *1*', () {
        testIt(msg: '1', resLen: 1, resList: ['a']);
      });

      test('Day 6 - 220822 - Basic Testing - *2*', () {
        testIt(msg: '2', resLen: 1, resList: ['b']);
      });

      test('Day 6 - 220822 - Basic Testing - *3*', () {
        testIt(msg: '3', resLen: 1, resList: ['c']);
      });

      test('Day 6 - 220822 - Basic Testing - *4*', () {
        testIt(msg: '4', resLen: 1, resList: ['d']);
      });

      test('Day 6 - 220822 - Basic Testing - *5*', () {
        testIt(msg: '5', resLen: 1, resList: ['e']);
      });

      test('Day 6 - 220822 - Basic Testing - *6*', () {
        testIt(msg: '6', resLen: 1, resList: ['f']);
      });

      test('Day 6 - 220822 - Basic Testing - *7*', () {
        testIt(msg: '7', resLen: 1, resList: ['g']);
      });

      test('Day 6 - 220822 - Basic Testing - *8*', () {
        testIt(msg: '8', resLen: 1, resList: ['h']);
      });

      test('Day 6 - 220822 - Basic Testing - *9*', () {
        testIt(msg: '9', resLen: 1, resList: ['i']);
      });

      test('Day 6 - 220822 - Basic Testing - *10*', () {
        testIt(msg: '10', resLen: 1, resList: ['j']);
      });

      test('Day 6 - 220822 - Basic Testing - *11*', () {
        testIt(msg: '11', resLen: 2, resList: ['aa', 'k']);
      });

      test('Day 6 - 220822 - Basic Testing - *12*', () {
        testIt(msg: '12', resLen: 2, resList: ['ab', 'l']);
      });

      test('Day 6 - 220822 - Basic Testing - *13*', () {
        testIt(msg: '13', resLen: 2, resList: ['ac', 'm']);
      });

      test('Day 6 - 220822 - Basic Testing - *14*', () {
        testIt(msg: '14', resLen: 2, resList: ['ad', 'n']);
      });

      test('Day 6 - 220822 - Basic Testing - *15*', () {
        testIt(msg: '15', resLen: 2, resList: ['ae', 'o']);
      });

      test('Day 6 - 220822 - Basic Testing - *16*', () {
        testIt(msg: '16', resLen: 2, resList: ['af', 'p']);
      });

      test('Day 6 - 220822 - Basic Testing - *17*', () {
        testIt(msg: '17', resLen: 2, resList: ['ag', 'q']);
      });

      test('Day 6 - 220822 - Basic Testing - *18*', () {
        testIt(msg: '18', resLen: 2, resList: ['ah', 'r']);
      });

      test('Day 6 - 220822 - Basic Testing - *19*', () {
        testIt(msg: '19', resLen: 2, resList: ['ai', 's']);
      });

      test('Day 6 - 220822 - Basic Testing - *20*', () {
        testIt(msg: '20', resLen: 1, resList: ['t']);
      });

      test('Day 6 - 220822 - Basic Testing - *21*', () {
        testIt(msg: '21', resLen: 2, resList: ['ba', 'u']);
      });

      test('Day 6 - 220822 - Basic Testing - *22*', () {
        testIt(msg: '22', resLen: 2, resList: ['bb', 'v']);
      });

      test('Day 6 - 220822 - Basic Testing - *23*', () {
        testIt(msg: '23', resLen: 2, resList: ['bc', 'w']);
      });

      test('Day 6 - 220822 - Basic Testing - *24*', () {
        testIt(msg: '24', resLen: 2, resList: ['bd', 'x']);
      });

      test('Day 6 - 220822 - Basic Testing - *25*', () {
        testIt(msg: '25', resLen: 2, resList: ['be', 'y']);
      });

      test('Day 6 - 220822 - Basic Testing - *26*', () {
        testIt(msg: '26', resLen: 2, resList: ['bf', 'z']);
      });

      test(
        'Day 6 - 220822 - Basic Testing - *27*',
        () => testIt(msg: '27', resLen: 1, resList: ['bg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *28*',
        () => testIt(msg: '28', resLen: 1, resList: ['bh']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *29*',
        () => testIt(msg: '29', resLen: 1, resList: ['bi']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *30*',
        () => testIt(msg: '30', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *31*',
        () => testIt(msg: '31', resLen: 1, resList: ['ca']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *32*',
        () => testIt(msg: '32', resLen: 1, resList: ['cb']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *33*',
        () => testIt(msg: '33', resLen: 1, resList: ['cc']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *34*',
        () => testIt(msg: '34', resLen: 1, resList: ['cd']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *35*',
        () => testIt(msg: '35', resLen: 1, resList: ['ce']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *36*',
        () => testIt(msg: '36', resLen: 1, resList: ['cf']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *37*',
        () => testIt(msg: '37', resLen: 1, resList: ['cg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *38*',
        () => testIt(msg: '38', resLen: 1, resList: ['ch']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *39*',
        () => testIt(msg: '39', resLen: 1, resList: ['ci']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *40*',
        () => testIt(msg: '40', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *41*',
        () => testIt(msg: '41', resLen: 1, resList: ['da']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *42*',
        () => testIt(msg: '42', resLen: 1, resList: ['db']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *43*',
        () => testIt(msg: '43', resLen: 1, resList: ['dc']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *44*',
        () => testIt(msg: '44', resLen: 1, resList: ['dd']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *45*',
        () => testIt(msg: '45', resLen: 1, resList: ['de']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *46*',
        () => testIt(msg: '46', resLen: 1, resList: ['df']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *47*',
        () => testIt(msg: '47', resLen: 1, resList: ['dg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *48*',
        () => testIt(msg: '48', resLen: 1, resList: ['dh']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *49*',
        () => testIt(msg: '49', resLen: 1, resList: ['di']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *50*',
        () => testIt(msg: '50', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *51*',
        () => testIt(msg: '51', resLen: 1, resList: ['ea']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *52*',
        () => testIt(msg: '52', resLen: 1, resList: ['eb']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *53*',
        () => testIt(msg: '53', resLen: 1, resList: ['ec']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *54*',
        () => testIt(msg: '54', resLen: 1, resList: ['ed']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *55*',
        () => testIt(msg: '55', resLen: 1, resList: ['ee']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *56*',
        () => testIt(msg: '56', resLen: 1, resList: ['ef']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *57*',
        () => testIt(msg: '57', resLen: 1, resList: ['eg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *58*',
        () => testIt(msg: '58', resLen: 1, resList: ['eh']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *59*',
        () => testIt(msg: '59', resLen: 1, resList: ['ei']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *60*',
        () => testIt(msg: '60', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *61*',
        () => testIt(msg: '61', resLen: 1, resList: ['fa']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *62*',
        () => testIt(msg: '62', resLen: 1, resList: ['fb']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *63*',
        () => testIt(msg: '63', resLen: 1, resList: ['fc']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *64*',
        () => testIt(msg: '64', resLen: 1, resList: ['fd']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *65*',
        () => testIt(msg: '65', resLen: 1, resList: ['fe']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *66*',
        () => testIt(msg: '66', resLen: 1, resList: ['ff']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *67*',
        () => testIt(msg: '67', resLen: 1, resList: ['fg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *68*',
        () => testIt(msg: '68', resLen: 1, resList: ['fh']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *69*',
        () => testIt(msg: '69', resLen: 1, resList: ['fi']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *70*',
        () => testIt(msg: '70', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *71*',
        () => testIt(msg: '71', resLen: 1, resList: ['ga']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *72*',
        () => testIt(msg: '72', resLen: 1, resList: ['gb']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *73*',
        () => testIt(msg: '73', resLen: 1, resList: ['gc']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *74*',
        () => testIt(msg: '74', resLen: 1, resList: ['gd']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *75*',
        () => testIt(msg: '75', resLen: 1, resList: ['ge']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *76*',
        () => testIt(msg: '76', resLen: 1, resList: ['gf']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *77*',
        () => testIt(msg: '77', resLen: 1, resList: ['gg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *78*',
        () => testIt(msg: '78', resLen: 1, resList: ['gh']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *79*',
        () => testIt(msg: '79', resLen: 1, resList: ['gi']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *80*',
        () => testIt(msg: '80', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *81*',
        () => testIt(msg: '81', resLen: 1, resList: ['ha']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *82*',
        () => testIt(msg: '82', resLen: 1, resList: ['hb']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *83*',
        () => testIt(msg: '83', resLen: 1, resList: ['hc']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *84*',
        () => testIt(msg: '84', resLen: 1, resList: ['hd']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *85*',
        () => testIt(msg: '85', resLen: 1, resList: ['he']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *86*',
        () => testIt(msg: '86', resLen: 1, resList: ['hf']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *87*',
        () => testIt(msg: '87', resLen: 1, resList: ['hg']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *88*',
        () => testIt(msg: '88', resLen: 1, resList: ['hh']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *89*',
        () => testIt(msg: '89', resLen: 1, resList: ['hi']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *90*',
        () => testIt(msg: '90', resLen: 0, resList: []),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *91*',
        () => testIt(msg: '91', resLen: 1, resList: ['ia']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *92*',
        () => testIt(msg: '92', resLen: 1, resList: ['ib']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *93*',
        () => testIt(msg: '93', resLen: 1, resList: ['ic']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *94*',
        () => testIt(msg: '94', resLen: 1, resList: ['id']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *95*',
        () => testIt(msg: '95', resLen: 1, resList: ['ie']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *96*',
        () => testIt(msg: '96', resLen: 1, resList: ['if']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *97*',
        () => testIt(msg: '97', resLen: 1, resList: ['ig']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *98*',
        () => testIt(msg: '98', resLen: 1, resList: ['ih']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *99*',
        () => testIt(msg: '99', resLen: 1, resList: ['ii']),
      );

      test(
        'Day 6 - 220822 - Basic Testing - *111*',
        () => testIt(msg: '111', resLen: 3, resList: ['aaa', 'ak', 'ka']),
      );

      test('Day 6 - 220822 - Basic Testing - *1111*', () {
        final res1 = countDecodeVariants('1111');
        final res2 = fastCountDecodeVariants('1111');
        final res3 = listDecodeVariants('1111');

        expect(res1, res2);
        expect(res1, 5);
        expect(res2, 5);
        expect(res3.length, 5);
        expect(res3, ['aaaa', 'aak', 'aka', 'kaa', 'kk']);
      });

      test('Day 6 - 220822 - Basic Testing - *11111*', () {
        final res1 = countDecodeVariants('11111');
        final res2 = fastCountDecodeVariants('11111');
        final res3 = listDecodeVariants('11111');

        expect(res1, res2);
        expect(res1, 8);
        expect(res2, 8);
        expect(res3.length, 8);
        expect(res3, [
          'aaaaa',
          'aaak',
          'aaka',
          'akaa',
          'akk',
          'kaaa',
          'kak',
          'kka',
        ]);
      });
    });
  });
}

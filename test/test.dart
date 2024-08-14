import 'package:test/test.dart';
import 'package:jyutping/jyutping.dart';

void main() {
  group('JyutpingHelper', () {
    test('isChinese returns true for Chinese characters', () {
      expect(JyutpingHelper.isChinese('你'), isTrue);
      expect(JyutpingHelper.isChinese('好'), isTrue);
      expect(JyutpingHelper.isChinese('世界'), isTrue);
    });

    test('isChinese returns false for non-Chinese characters', () {
      expect(JyutpingHelper.isChinese('a'), isFalse);
      expect(JyutpingHelper.isChinese('Hello'), isFalse);
      expect(JyutpingHelper.isChinese('123'), isFalse);
    });

    test('getWholeJyutpingPhrase returns correct Jyutping for Chinese phrase',
        () {
      var result = JyutpingHelper.getWholeJyutpingPhrase('你好', false);
      expect(result, equals(['nei5', 'hou2']));
    });

    test(
        'getWholeJyutpingPhrase returns multiple pronunciations when specified',
        () {
      var result = JyutpingHelper.getWholeJyutpingPhrase('好', true);
      expect(result, equals(['hou2/hou3']));
    });

    test('getWholeJyutpingPhrase throws exception for non-Chinese input', () {
      expect(() => JyutpingHelper.getWholeJyutpingPhrase('Hello', false),
          throwsException);
    });

    test('getJyutpingAsString returns correct Jyutping for single character',
        () {
      expect(JyutpingHelper.getJyutpingAsString('你', false), equals('nei5'));
    });

    test('getJyutpingAsString returns multiple pronunciations when specified',
        () {
      expect(
          JyutpingHelper.getJyutpingAsString('好', true), equals('hou2/hou3'));
    });

    test('getJyutpingAsString throws exception for non-Chinese input', () {
      expect(() => JyutpingHelper.getJyutpingAsString('A', false),
          throwsException);
    });

    test('getJyutpingAsList returns correct Jyutping list for single character',
        () {
      expect(JyutpingHelper.getJyutpingAsList('你'), equals(['nei5', 'lei5']));
    });

    test(
        'getJyutpingAsList returns multiple pronunciations for characters with multiple readings',
        () {
      expect(JyutpingHelper.getJyutpingAsList('好'), equals(['hou2', 'hou3']));
    });

    test('getJyutpingAsList throws exception for non-Chinese input', () {
      expect(() => JyutpingHelper.getJyutpingAsList('A'), throwsException);
    });

    test(
        'getJyutpingAsString and getJyutpingAsList throw exception for characters not in the dictionary',
        () {
      expect(() => JyutpingHelper.getJyutpingAsString('�', false),
          throwsException);
      expect(() => JyutpingHelper.getJyutpingAsList('�'), throwsException);
    });
  });
}

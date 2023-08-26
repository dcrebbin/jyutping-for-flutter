import 'package:jyutping/src/jyutping_data.dart';

class JyutpingHelper {
  static String helloworld(String testName) {
    StringBuffer sb = StringBuffer();
    sb.write("Hello $testName");
    return sb.toString();
  }

  static bool IsChinese(String chineseCharacterInput) {
    var chineseRegex = RegExp(r'[\u4E00-\u9FFF]');
    if (chineseRegex.hasMatch(chineseCharacterInput)) {
      return true;
    }
    return false;
  }

  static String getJyutpingAsString(
      String chineseCharacterInput, bool returnMultiple) {
    if (!IsChinese(chineseCharacterInput)) {
      throw Exception("Input is not Chinese");
    }
    StringBuffer sb = StringBuffer();
    try {
      List<String>? jyutping = jyutpingConversion[chineseCharacterInput];
      if (jyutping!.length > 1 && returnMultiple) {
        sb.write(jyutping.join("/"));
      } else {
        sb.write(jyutping[0]);
      }
      return sb.toString();
    } catch (e) {
      throw Exception(
          "${chineseCharacterInput} does not exist within the jyutping conversion dictionary");
    }
  }

  static List<String> getJyutpingAsList(String chineseCharacterInput) {
    if (!IsChinese(chineseCharacterInput)) {
      throw Exception("Input is not Chinese");
    }
    try {
      List<String>? jyutping = jyutpingConversion[chineseCharacterInput];
      return jyutping!;
    } catch (e) {
      throw Exception(
          "$chineseCharacterInput does not exist within the jyutping conversion dictionary");
    }
  }
}

import 'package:jyutping/src/jyutping_data.dart';

class JyutpingHelper {
  static String helloworld(String testName) {
    StringBuffer sb = StringBuffer();
    sb.write("Hello $testName");
    return sb.toString();
  }

  static String getJyutping(String chinese, bool returnMultiple) {
    StringBuffer sb = StringBuffer();
    List<String>? jyutping = jyutpingConversion[chinese];
    if (jyutping!.length > 1 && returnMultiple) {
      sb.write(jyutping.join("/"));
    } else {
      sb.write(jyutping[0]);
    }
    return sb.toString();
  }
}

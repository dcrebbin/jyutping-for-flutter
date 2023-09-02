## Jyutping for Flutter

A flutter package for converting Chinese characters to Jyutping.

## Pub
    dependencies:
      jyutping: ^0.0.1  #latest version
## Example
``` dart
import 'package:jyutping/src/jyutping_helper.dart';

//getJyutpingAsString(Chinese character, Retrieve a list of Jyutping if there's multiple conversions)

String testJyutping = JyutpingHelper.getJyutpingAsString("你",false);

//nei5
print(testJyutping);
```

## Acknowledgements 

#### Developer/s
- Devon Crebbin

#### Data by the Linguistic Society of Hong Kong (LSHK):
- Dr Cheung Kwan Hin (PolyU)
- Prof Lu Qin (PolyU)
- Jyutping Workgroup, LSHK
- Nathan Hammond (@nathanhammond)

#### [Jyutping Table Repository (By LSHK)](https://github.com/lshk-org/jyutping-table)

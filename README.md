## Jyutping for Flutter

A flutter package for converting written Cantonese characters to Jyutping.

License: **MIT**

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

---
*The Jyutping Flutter package uses data from the Jyutping Table project*

[The Linguistic Society of Hong Kong](https://lshk.org/)

#### Jyutping Table Acknowledgements:
- [Dr Chaak-ming Lau](https://github.com/chaaklau)
- Dr Cheung Kwan Hin (PolyU)
- Prof Lu Qin (PolyU)
- Jyutping Workgroup, LSHK
- Nathan Hammond (@nathanhammond)

#### [Jyutping Table Repository (By LSHK)](https://github.com/lshk-org/jyutping-table)

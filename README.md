## Jyutping for Flutter

A flutter package for converting written Cantonese characters to Jyutping.

License: **MIT**
## Pub
    dependencies:
      jyutping: ^0.1.0  #latest version
## Example
``` dart
import 'package:jyutping/src/jyutping_helper.dart';

//getJyutpingAsString(Cantonese character, Retrieves a list of Jyutping if there's multiple conversions)

String testJyutping = JyutpingHelper.getJyutpingAsString("你",false);

//nei5
print(testJyutping);

String testMultiJyutping = JyutpingHelper.getJyutpingAsString("你",true);

//[nei5,lei5]
print(testMultiJyutping);

//getWholeJyutpingPhrase(Cantonese phrase, Retrieves a list of Jyutping if there's multiple conversions)

String testWholeJyutpingPhrase = JyutpingHelper.getWholeJyutpingPhrase("你好吗",false);

//[nei5,hou2,maa1]
print(testWholeJyutpingPhrase);
```

## TODO

- [ ] Unit tests 

## Acknowledgements 

#### Developer/s
- Devon Crebbin

*The Jyutping Flutter package uses data from the Jyutping Table project*

[The Linguistic Society of Hong Kong](https://lshk.org/)

#### Jyutping Table Acknowledgements:
- [Dr Chaak-ming Lau](https://github.com/chaaklau)
- Dr Cheung Kwan Hin (PolyU)
- Prof Lu Qin (PolyU)
- Jyutping Workgroup, LSHK
- Nathan Hammond (@nathanhammond)

#### [Jyutping Table Repository (By LSHK)](https://github.com/lshk-org/jyutping-table)

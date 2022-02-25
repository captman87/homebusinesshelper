import 'cancerScripts.dart';

final Map<String, dynamic> scriptlist = {
  '원스톱 100세 암보험 III': ['100세 암 스크립트 1', '100세 암 스크립트 2'],
  '백세시대 꼭하나 건강보험': ['백꼭 버젼 1', '백꼭 버젼 2', '백꼭 버젼 3'],
  '뉴 이 좋은 치아보험': ['치아 버젼 1', '치아 버젼 2'],
  '든든 튼튼 치매보험': ['치매 버젼 1', '치매 버젼 2']
};

final Map<String, dynamic> scriptListFromEachProduct = {
  '100세 암 스크립트 1': [
    cancerDoip_1,
    cancerDescription_1_1,
    cancerDescription_1_2,
    cancerDescription_1_3,
    cancerClosing_1
  ],
  '100세 암 스크립트 2': [
    cancerDoip_2,
    cancerDescription_2_1,
    cancerDescription_2_2,
    cancerDescription_2_3,
    cancerClosing_2
  ],
  '백꼭 버젼 1': ['도입1', '상품설명1', '클로징1'],
  '백꼭 버젼 2': ['도입2', '상품설명2', '클로징2'],
  '백꼭 버젼 3': ['도입3', '상품설명3', '클로징3'],
  '치아 버젼 1': ['도입1', '상품설명1', '클로징1'],
  '치아 버젼 2': ['도입2', '상품설명2', '클로징2'],
  '치매 버젼 1': ['도입1', '상품설명1', '클로징1'],
  '치매 버젼 2': ['도입2', '상품설명2', '클로징2'],
};

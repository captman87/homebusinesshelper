class DiseaseList {
  List<DiseaseInfo> diseaseinfo;

  DiseaseList({
    required this.diseaseinfo,
  });

  factory DiseaseList.fromJson(List<dynamic> parsedJson) {
    List<DiseaseInfo> diseaseinfo = <DiseaseInfo>[];
    diseaseinfo = parsedJson
        .map((parsedJson) => DiseaseInfo.fromJson(parsedJson))
        .toList();

    return DiseaseList(diseaseinfo: diseaseinfo);
  }
}

class DiseaseInfo {
  String diseasename;
  String operation;
  String twoCI;
  String cancer;
  String firstSearch;
  String secondSearch;
  String thirdSearch;

  DiseaseInfo(
      {required this.diseasename,
      required this.operation,
      required this.twoCI,
      required this.cancer,
      required this.firstSearch,
      required this.secondSearch,
      required this.thirdSearch});

  factory DiseaseInfo.fromJson(Map<String, dynamic> json) {
    return DiseaseInfo(
        diseasename: json['name'],
        operation: json['operation'],
        twoCI: json['2CI'],
        cancer: json['cancer'],
        firstSearch: json['1st_search'],
        secondSearch: json['2nd_search'],
        thirdSearch: json['3rd_search']);
  }
}

class ScriptList {
  List<ScriptInfo> scriptinfo;

  ScriptList({
    required this.scriptinfo,
  });

  factory ScriptList.fromJson(List<dynamic> parsedJson) {
    List<ScriptInfo> scriptinfo = <ScriptInfo>[];
    scriptinfo = parsedJson
        .map((parsedJson) => ScriptInfo.fromJson(parsedJson))
        .toList();

    return ScriptList(scriptinfo: scriptinfo);
  }
}

class ScriptInfo {
  String productname;
  String beginning_1;
  String beginning_2;
  String description_1;
  String description_2;
  String closing_1;
  String closing_2;

  ScriptInfo(
      {required this.productname,
      required this.beginning_1,
      required this.beginning_2,
      required this.description_1,
      required this.description_2,
      required this.closing_1,
      required this.closing_2});

  factory ScriptInfo.fromJson(Map<String, dynamic> json) {
    return ScriptInfo(
        productname: json['name'],
        beginning_1: json['beginning_1'],
        beginning_2: json['beginning_2'],
        description_1: json['description_1'],
        description_2: json['description_2'],
        closing_1: json['closing_1'],
        closing_2: json['closing_2']);
  }
}

// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

int indexNum = 0;
List<String> items = [
  '화법\n바로가기',
  '암\n바로가기',
  '심혈관질환\n바로가기',
  '뇌혈관질환\n바로가기',
  '치매,LTC\n바로가기',
  '당뇨\n바로가기',
  '사망\n바로가기',
];
List<String> narration_items = ['비유화법', '설득화법'];
List<String> cancer_items = [
  '암 기본 용어',
  '암의 병기 구분',
  '암을 치료하는 3가지 방법',
  '차조심,불조심,암조심!',
  '늘어나는 암, 줄어드는 암',
  '3대 남성암, 전폐간',
  '3대 여성암, 자유갑',
  '남자는 오후에, 여자는 오전에!',
  '생존율이 낮은 암이 치료비가 많이 든다',
  '유암장수의 시대',
  '유전무암 무전유암',
  '통원의 그늘',
  '큰 병엔 큰 병원',
  '가장의 암진단금은 사망보험금과 같다!',
  '부동의 사망원인 1위, 암!',
  '생존율 100%, 갑상선암',
  '신경 못 쓰는 폐암',
  '세계 1위 위암',
  '이제는 한국형 암, 대장암',
  '뒤끝 있는 유방암',
  '아버지암에서 형님암으로, 전립선암',
  '침묵의 암, 간암',
  '은둔의 암, 췌장암',
];
List<String> heart_items = [
  '심장질환과 심혈관질환',
  '관상동맥과 죽상경화',
  '좁아지면 협심증,막히면 심근경색',
  '협심증이 더 많고, 심근경색이 더 치명적',
  '갱년기 혈관을 지켜라!',
  '막히면 돌아가고, 좁아지면 뚫어라!',
];
List<String> brain_items = [
  '중풍과 뇌졸중',
  '혈압 때문에 터지거나,혹 때문에 터지거나',
  '코일로 막거나, 클립으로 묶거나',
  '혈전이 혈관을 막는다',
  '뇌경색이 더 많고, 뇌출혈이 더 치명적!',
  '뇌출혈은 나이를 따지지 않는다!',
];
List<String> dimentia_items = [
  '가족이 짊어지고 가는 치매',
  '치매는 질병이 아니다!',
  '알츠하이머 치매는 서서히!',
  '혈관성 치매는 갑자기!',
  '노인장기요양보험과 간병보험',
  '노인과 알파치뇌',
  '아내의 간병을 준비하라!',
];
List<String> diabetes_items = [
  '당이 넘쳐나는 당뇨병',
  '소아당뇨, 비만당뇨, 마른당뇨',
  '고3친구를 조심하라!',
  '머리부터 발끝까지 합병증!',
];
List<String> death_items = [
  '상사보다 병사',
  '남자는 일찍, 여자는 늦게!',
  '남녀유별 사망원인(남)',
  '남녀유별 사망원인(여)',
];

class SelfStudyPage extends StatefulWidget {
  const SelfStudyPage({Key? key}) : super(key: key);

  @override
  State<SelfStudyPage> createState() => _SelfStudyPageState();
}

class _SelfStudyPageState extends State<SelfStudyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return GridView.count(
        crossAxisCount: 3,
        children: List<Widget>.generate(
          7,
          (index) => Container(
            margin: EdgeInsets.all(8.h),
            child: OutlinedButton(
              onPressed: () {
                indexNum = index;
                Navigator.pushNamed(context, '/0');
              },
              style: CustomButtonStyle(index),
              child: Text(
                items[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontFamily: 'customfont',
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}

ButtonStyle CustomButtonStyle(int index) {
  if (index == 0) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red[400]));
  } else if (index == 1) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green[400]));
  } else if (index == 2) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue[400]));
  } else if (index == 3) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.pink[400]));
  } else if (index == 4) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orange[400]));
  } else if (index == 5) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.brown[400]));
  } else {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.deepPurple[400]));
  }
}

// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';

List<Map<int, dynamic>> budambo_list = [
  {1: '위,십이지장'},
  {2: "공장(빈창자), 회장(돌창자), 맹장(충수돌기 포함"},
  {3: "대장(맹장,직장 제외)"},
  {4: "직장"},
  {5: "항문"},
  {6: "간"},
  {7: "담낭(쓸개) 및 담관"},
  {8: "췌장"},
  {9: "비장"},
  {10: "기관, 기관지 폐, 흉막 및 흉곽(늑골포함)"},
  {11: "코[외비(코 바깥), 비강(코 안) 및 부비강(코 곁굴) 포함]"},
  {12: "인두 및 후두(편도 포함)"},
  {13: "식도"},
  {14: "구강, 치아, 혀, 악하선(턱밑샘),이하선(귀밑샘) 및 설하선(혀밑샘)"},
  {15: "귀[외이(바깥 귀),고막,중이(가운데귀),내이(속귀),청신경 및 유양돌기 포함(꼭지돌기)]"},
  {16: "안구 및 안구부속기[안검(눈꺼풀),결막,누기(눈물샘),안근 및 안와내 조직포함]"},
  {17: "신장"},
  {18: "부신"},
  {19: "요관, 방광 및 요도"},
  {20: "음경"},
  {21: "질 및 외음부"},
  {22: "전립선"},
  {23: "유방(유선 포함)"},
  {24: "자궁[자궁체부(자궁몸통) 포함"},
  {25: "자궁체부(자궁몸통)(제왕절개술을 받은 경우에 한함)"},
  {26: "난소 및 난관"},
  {27: "고환[고환초막(고환집막)포함],부고환,정관,정삭 및 정낭"},
  {28: "갑상선"},
  {29: "부갑상선"},
  {30: "서혜부(넓적다리 부위의 위쪽 주변)(서혜 탈장, 음낭 탈장 또는 대퇴 탈장이 생긴 경우에 한함)"},
  {31: "피부(두피 및 입술 포함)"},
  {32: "경추부(해당신경 포함)"},
  {33: "흉추부(해당신경 포함)"},
  {34: "요추부(해당신경 초함)"},
  {35: "천골(엉치뼈)부 및 미골(꼬리뼈)부 (해당 신경  포함)"},
  {36: "왼쪽 어깨"},
  {37: "오른쪽 어깨"},
  {38: "왼팔(왼쪽 어깨 제외, 왼손 포함"},
  {39: "오른팔(오른쪽 어깨 제외, 오른손 포함"},
  {40: "왼손(왼쪽 손목 관절 이하)"},
  {41: "오른손(오른쪽 손목 관절 이하)"},
  {42: "왼쪽 고관절"},
  {43: "오른쪽 고관절"},
  {44: "왼쪽 다리(왼쪽 고관절 제외, 왼발 포함)"},
  {45: "오른쪽 다리(오른쪽 고관절 제외, 오른발 포함)"},
  {46: "왼발(왼쪽 발목 관절 이하)"},
  {47: "오른발(오른쪽 발목 관절 이하)"},
  {48: "상,하악골(위턱뼈,아래턱뼈)"},
  {49: "쇄골"},
  {50: "늑골(갈비뼈)"},
  {61: "심장질환"},
  {62: "뇌혈관질환"},
  {63: "당뇨병"},
  {64: "고혈압질환"},
  {65: "결핵"},
  {66: "담석증"},
  {67: "요로결석증"},
  {68: "임신중독증"},
  {69: "골관절증 및 류마티스 관절염"},
  {70: "척추만곡증"},
  {71: "통풍"},
  {72: "고지혈증"},
  {73: "사시"},
  {74: "백내장"},
  {75: "하지정맥류(정맥염 포함)"},
  {76: "탈장(음낭수종 포함)"},
  {77: "유산"},
  {78: "복막의 질환"},
  {79: "골반염"},
  {80: "골다공증"},
  {81: "천식"},
  {82: "빈혈"},
  {83: "수면장애"},
  {84: "두통"},
  {85: "다한증"},
  {86: "결절종"},
  {87: "지방종"},
  {88: "자궁내막증"},
  {89: "자궁근종"},
];

class BudamboScript extends StatelessWidget {
  const BudamboScript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              '부담보 녹취 스크립트',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[800]),
      ),
      body: Container(
        margin: EdgeInsets.all(10.h),
        child: ListView(
          children: [
            Container(
              color: Colors.yellow[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText('1. 특정신체부위 부담보 시', TextAlign.left, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(
                      '계약일 이후 회사가 정한 <cr><b>면책기간 (O년)</cr></b> 중에 <cr><b>특정신체부위 (분류번호 O번, 명칭OOO)</cr></b>에 발생한 질병과 해당 질병이 전이된 질병에 대해서는 보험금을 지급하지 않거나 보험료 납입을 면제 하지 않습니다.',
                      TextAlign.left,
                      18),
                  Padding(padding: EdgeInsets.only(top: 5.h)),
                ],
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(padding: EdgeInsets.only(top: 5.h)),
                  CustomText('<cb><b>※사망급부 있는 경우 추가 안내 :</cb></b>',
                      TextAlign.left, 18),
                  CustomText('다만, 사망하여 보험금 등의 지급사유가 발생한 경우에는 그러하지 아니합니다.',
                      TextAlign.left, 18),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            // SingleChildScrollView(
            //   child: Expanded(
            //     child: DataTable(
            //       columns: _dataColumns(),
            //       rows: _dataRows(),
            //       horizontalMargin: 5.w,
            //       columnSpacing: 20.0,
            //       headingTextStyle: TextStyle(
            //           fontFamily: 'customfont',
            //           color: Colors.black,
            //           fontSize: 15.sp),
            //       dataTextStyle: TextStyle(
            //           fontFamily: 'customfont',
            //           color: Colors.black,
            //           fontSize: 13.sp),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

// List<DataColumn> _dataColumns() {
//   List<DataColumn> dataColumn = [];

//   dataColumn.add(const DataColumn(
//       label: Text(
//     '분류번호',
//   )));
//   dataColumn.add(const DataColumn(
//       label: Text(
//     '특정 신체부위 및 특정질병의 명칭',
//   )));

//   return dataColumn;
// }

// List<DataRow> _dataRows() {
//   List<DataRow> dataRow = [];

//   for (var i = 0; i < budambo_list.length; i++) {
//     dataRow.add(DataRow(cells: [
//       DataCell(Text(budambo_list[i].keys.toString())),
//       DataCell(Container(
//         width: 250.w,
//         child: Text(budambo_list[i]
//             .values
//             .toString()
//             .replaceFirst('(', '')
//             .replaceFirst(')', '')),
//       ))
//     ]));
//   }
//   return dataRow;
// }

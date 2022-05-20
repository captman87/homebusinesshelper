// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';

import '../budambo_jsonparsing.dart';

List<Map<String, String>> json = budambo_list;
Budambo_List list = Budambo_List.fromJson(json);

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
            CustomText("부담보 분류번호 및 명칭\n", TextAlign.center, 20),
            Row(
              children: [
                Flexible(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (var i in list.budambo_info)
                          CustomText(
                              i.bodypart_number.toString() +
                                  "번" +
                                  "  " +
                                  i.bodypart_name.toString() +
                                  "\n",
                              TextAlign.left,
                              18),
                      ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

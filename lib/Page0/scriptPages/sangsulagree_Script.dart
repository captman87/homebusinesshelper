// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';

class SangsulAgreeScript extends StatelessWidget {
  const SangsulAgreeScript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              '상설 동의 스크립트',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[400]),
      ),
      body: Container(
        margin: EdgeInsets.all(20.h),
        child: ListView(
          children: [
            CustomText('<cr>주민번호 수집시 반드시 상품설계동의 (본인 녹취) 필수!!</cr>',
                TextAlign.center, 17),
            CustomText('<cr>가족의 경우에도 절대 불가! 상담원 본인/가족도 불가!!</cr>',
                TextAlign.center, 17),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            CustomText('OOO고객님, 본 동의를 거부하실 수 있으나 거부 시 정확한 설계가 불가합니다.',
                TextAlign.left, 20),
            Padding(padding: EdgeInsets.only(top: 20.h)),
            CustomText(
                '회사가 상품설계를 위해 1년간 고객님의 인적사항, 보험청약, 계약 및 보험금 지급 관련 정보 등을 수집, 이용 하고 한국신용정보원 등에 조회, 업무 수탁자 등에 제공하는데 동의하세요?',
                TextAlign.left,
                20),
            CustomText('<cr>[예 동의필수]</cr>', TextAlign.end, 20),
            Padding(padding: EdgeInsets.only(top: 20.h)),
            CustomText(
                '앞서 동의해주신 정보에 건강정보와 주민번호가 포함되는 것에 동의하세요?', TextAlign.left, 20),
            CustomText('<cr>[예 동의필수]</cr>', TextAlign.end, 20),
            Padding(padding: EdgeInsets.only(top: 20.h)),
            CustomText('네, 주민번호를 말씀해주세요.', TextAlign.left, 20),
            CustomText('<cr><b>(주민번호 13자리 고객의 육성으로 받기)</b></cr>',
                TextAlign.center, 17),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';
import 'package:styled_text/styled_text.dart';

class EasyrecordScript extends StatelessWidget {
  const EasyrecordScript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              '간단 녹취 스크립트',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[600]),
      ),
      body: Container(
        margin: EdgeInsets.all(20.h),
        child: ListView(
          children: [
            CustomText(
                '<cr><b>[녹취일 포함 10일이내 미출금 시]</b></cr>', TextAlign.center, 20),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            CustomText(
                '고객님, 안녕하세요. (   )사유로 계좌(카드) 에서 보험료가 인출되지 않아서 오늘 재인출 하겠습니다.',
                TextAlign.left,
                20),
            Padding(padding: EdgeInsets.only(top: 20.h)),
            CustomText(
                'OO년 O월 O일 O시 O분 상품내용 및 약관의 중요내용에 대해 설명드렸던 OOO보험의 보험료 OO원을 오늘 인출하는데 동의하시죠?',
                TextAlign.left,
                20),
            CustomText('<cr>[예 동의필수]</cr>', TextAlign.end, 20),
            Padding(padding: EdgeInsets.only(top: 20.h)),
            CustomText('녹취이후 건강고지, 직업고지 변경된 게 있으세요?', TextAlign.left, 20),
            CustomText('<cr>[대답필수]</cr>', TextAlign.end, 20),
            Padding(padding: EdgeInsets.only(top: 20.h)),
            CustomText('계약일은 O월 O일로 변경되셨으며, 보장개시일은 초회보험료 입금일이 됩니다.',
                TextAlign.left, 20),
          ],
        ),
      ),
    );
  }
}

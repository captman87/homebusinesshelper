// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';

class ChungchulScript extends StatelessWidget {
  const ChungchulScript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              '청약철회 스크립트',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.orange[600]),
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
                  CustomText(
                      '고객님의 정보 보호를 위해 몇가지 여쭙고 안내 해 드리겠습니다. 계약자 OOO님 본인 맞으세요?',
                      TextAlign.left,
                      18),
                  CustomText('<cr>[예 동의필수]</cr>', TextAlign.end, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText('①생년월일이 어떻게 되세요?', TextAlign.left, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(
                      '②해당 계약의 보험료는 어떤 방법으로 납부하기로 하셨어요?', TextAlign.left, 18),
                  CustomText('<b>(자동이체 or 카드납 - 고객 직접 말씀해주셔야함)</b>',
                      TextAlign.center, 15),
                  CustomText('확인 감사합니다.', TextAlign.left, 18),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              color: Colors.yellow[200],
              child: Column(
                children: [
                  CustomText('고객님 최근에 가입하신 증권번호 OOO, O건 계약의 취소(청약철회)를 원하십니까?',
                      TextAlign.left, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText('실례지만 청약철회 하시려는 사유가 어떻게 되세요?', TextAlign.left, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(
                      '혹시 보험가입 하실 때 저희 회사의 요청으로 지정한 병원에서 (또는 방문 진단으로) 건강진단을 받은 적 있으세요?',
                      TextAlign.left,
                      18),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText('<cr><b> 진단받은 계약, 전문보험계약자 는 청약철회 불가<b></cr>',
                      TextAlign.left, 14),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.5, color: Colors.red)),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              color: Colors.yellow[200],
              child: Column(
                children: [
                  CustomText(
                      '취소 접수 후에는 보험의 효력이 발생 되지 않으며, 철회에 대한 취소는 가능하지 않습니다.',
                      TextAlign.left,
                      18),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
                color: Colors.yellow[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomText('지금부터 접수를 위해 몇가지 여쭙겠습니다.', TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText(
                        '① 청약철회는 계약자 본인만 신청이 가능합니다. 지금 신청하시는 분은 계약자 OOO님 본인 맞으세요?',
                        TextAlign.left,
                        18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText(
                        '② 철회하는 계약은 보험대상자(피보험자)가 OOO님인 (상품명)OO보험 총 O건 맞으세요?',
                        TextAlign.left,
                        18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText('③ 고객님의 국적은 어떻게 되시나요?', TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText('④ 영문명은 어떻게 되십니까? (추천 영문명으로 등록해드려도 될까요?)',
                        TextAlign.left, 18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              child: Column(
                children: [
                  CustomText('[계좌 납부 건]', TextAlign.center, 18),
                  CustomText(
                      '납부된 보험료는 접수일 포함해서 평일기준 3일 이내에 청약 시 등록한 반환 계좌로 반환 해드립니다.',
                      TextAlign.left,
                      18),
                ],
              ),
              decoration: BoxDecoration(color: Colors.blue[200]),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              child: Column(
                children: [
                  CustomText('[카드 납부 건]', TextAlign.center, 18),
                  CustomText(
                      '카드로 승인된 보험료는 승인 취소 처리 돼서 고객님의 카드대금 청구 시 마이너스처리 됩니다.',
                      TextAlign.left,
                      18),
                ],
              ),
              decoration: BoxDecoration(color: Colors.yellow[200]),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              color: Colors.yellow[200],
              child: CustomText(
                  '저는 (센터명) AIA생명 담당자 OOO이구요~ 행복 가득한 하루되세요. 감사합니다.',
                  TextAlign.left,
                  18),
            ),
          ],
        ),
      ),
    );
  }
}

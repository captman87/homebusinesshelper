// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';

class ChungchulDefenceScript extends StatelessWidget {
  const ChungchulDefenceScript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              '철회방어 스크립트',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.orange[400]),
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
                        '안녕하세요. 저는 (소속센터명) 담당자 OOO입니다.', TextAlign.left, 18),
                    CustomText('계약자 OOO고객님 본인 맞으세요?', TextAlign.left, 18),
                    CustomText('<cr>[예 동의필수]</cr>', TextAlign.end, 18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
              color: Colors.yellow[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText('고객님의 정보 보호를 위해 두가지 확인 후 안내해 드리겠습니다.',
                      TextAlign.left, 18),
                  CustomText('<cr>[예 동의필수]</cr>', TextAlign.end, 18),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  CustomText('① 고객님의 생년월일이 어떻게 되세요?', TextAlign.left, 18),
                  CustomText('② 보험료 납부 방법이 어떻게 되세요?', TextAlign.left, 18),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            CustomText(
                '<cb><b>납부방법 상담원 선언급 및 고객 오답변시 추가 확인내용 아래 택일 가능 (①~⑥중 한가지 필수)</b></cb>',
                TextAlign.left,
                15),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
                color: Colors.blue[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomText('① 주소', TextAlign.left, 18),
                    CustomText('② 증권번호', TextAlign.left, 18),
                    CustomText('③ 정확한 상품명', TextAlign.left, 18),
                    CustomText('④ 월 보험료 정확한 금액', TextAlign.left, 18),
                    CustomText('⑤ 보험료 이체일', TextAlign.left, 18),
                    CustomText('⑥ 자동이체의 경우 은행명', TextAlign.left, 18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
                color: Colors.yellow[200],
                child: CustomText('확인 감사합니다.', TextAlign.left, 18)),
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
                  CustomText(
                      '(상품명)OOO보험계약의 <cb><b>철회/해지/품질보증해지</b></cb> 취소 요청을 해주셔서 지금 바로 접수해드리려고 하는데 괜찮으시죠?',
                      TextAlign.left,
                      18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(
                      '전화상 <cb><b>철회/해지/품질보증해지</b></cb> 취소가 진행되기 때문에 본 통화내용을 근거로 몇가지 확인 후 신청이 가능합니다.',
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
            Container(
                color: Colors.yellow[200],
                child: Column(
                  children: [
                    CustomText(
                        '① 피보험자 OOO님의 성함이 어떻게 되십니까?', TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText(
                        '② O월 O일 요청하신 증권번호 OOO, 보험명 OOO 계약 1건의 <cb><b>철회/해지/품질보증해지</b></cb> 접수를 취소하는데 동의 하세요?',
                        TextAlign.left,
                        18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
              color: Colors.yellow[200],
              child: Column(
                children: [
                  CustomText('<cb><b>철회/해지/품질보증해지</b></cb>취소접수 완료 되었습니다.',
                      TextAlign.left, 18),
                  CustomText('저는 상담사 OOO 이였습니다. 감사합니다.', TextAlign.left, 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/main.dart';

class TukyakDelScript extends StatelessWidget {
  const TukyakDelScript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              '특약 삭제 스크립트',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.orange[800]),
      ),
      body: Container(
        margin: EdgeInsets.all(10.h),
        child: ListView(
          children: [
            CustomText('<cr><b>(미결삭제인 경우에 사용)</b></cr>', TextAlign.center, 20),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
                color: Colors.yellow[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        '지금부터 특약삭제를 위한 녹음을 시작하겠습니다.', TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText('1. OOO고객님 계약자 본인 맞으시죠?', TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText('2. 계약자님의 생년월일이 어떻게 되세요? (계약자 답변 필수)',
                        TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText('3. 특약삭제를 원하시는 보험상품의 증권번호 OOO, 상품명 OOO 맞으세요?',
                        TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                  ],
                )),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.yellow[200],
                child: CustomText(
                    '4. 특약삭제를 하시려는 사유는 OOO 입니다.', TextAlign.left, 18)),
            Container(
                color: Colors.yellow[200],
                child: Column(
                  children: [
                    CustomText('<cr>- 반제금이 발생 될 경우</cr>', TextAlign.center, 18),
                    CustomText('- 특약삭제  후 보험료 OOO원이며, 반환되는 금액은 OO원 입니다.',
                        TextAlign.left, 18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
                color: Colors.blue[200],
                child: Column(
                  children: [
                    CustomText(
                        '<cr>- 반제금이 발생 안 될 경우</cr>', TextAlign.center, 18),
                    CustomText('- 특약삭제  후 보험료 OOO원이며, 반환되는 금액은 없습니다.',
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
                color: Colors.yellow[200],
                child: Column(
                  children: [
                    CustomText('5. 반환 받으실 은행은 어떻게 되세요?', TextAlign.left, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText(
                        '<cr>- 계약자의 반환계좌로 요청시</cr>', TextAlign.center, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText(
                        'OOO은행 계좌번호 OOO으로 등록되어 있는데 맞으세요? 접수일 포함하여 3~4일 이내 반환해 드립니다.',
                        TextAlign.left,
                        18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
                color: Colors.blue[200],
                child: Column(
                  children: [
                    CustomText(
                        '<cr>- 계약자가 다른 반환계좌로 요청시</cr>', TextAlign.center, 18),
                    Padding(padding: EdgeInsets.only(top: 10.h)),
                    CustomText(
                        '계약자 본인의 은행명, 계좌번호가 어떻게 되세요? 접수일 포함하여 3~4일 이내 반환 해 드립니다.',
                        TextAlign.left,
                        18),
                  ],
                )),
            Padding(padding: EdgeInsets.only(top: 10.h)),
            Container(
              color: Colors.red[100],
              child: Column(
                children: [
                  CustomText('<cr>- 계/납 상이 시 가입 당시 납입자의 통장으로 반환에 동의 한 경우</cr>',
                      TextAlign.center, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(
                      '보험료 반환이 필요한 경우 예금주의 계좌로 송금하는 것에 동의하셔서 기존에 등록하셨던 예금주의 자동이체 계좌로 송금해드리도록 하겠습니다.',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText('<cr>* 외국인 계약의 경우, 아래 내용 필수 녹취 진행</cr>',
                      TextAlign.center, 18),
                  CustomText(
                      '6. 자금세탁 방지법에 따라 모든 금융거래 관련 업무 전에는 거래 당사자의 정보를 습득하여 본인 여부를 확인하여야 합니다. 추가로 두가지 사항 확인 후 진행해 드리겠습니다.',
                      TextAlign.left,
                      18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(' ①. 국적은 어떻게 되세요?', TextAlign.left, 18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText(
                      ' ②. 영문명은 어떻게 되세요?\n (계약자 답변 필수)', TextAlign.left, 18),
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
                      '7. 마무리\n OOO고객님, 특약삭제 녹취 후 취소는 불가능하며 특약삭제 된 부분에 대한 보장내용은 제외 됩니다. 특약삭제 접수 되었으며 정상 인수  후 증권이 발송됩니다. 다른 더 궁금한 사항 없으세요?',
                      TextAlign.left,
                      18),
                  Padding(padding: EdgeInsets.only(top: 10.h)),
                  CustomText('네~ 저는 상담원 OOO이였습니다. 행복 가득한 하루 되세요. 감사합니다.',
                      TextAlign.left, 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

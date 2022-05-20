// ignore_for_file: file_names, must_call_super, non_constant_identifier_names

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/Page2/scripts/scriptlist.dart';
import 'package:styled_text/styled_text.dart';

class ScriptForProduct extends StatefulWidget {
  const ScriptForProduct({Key? key}) : super(key: key);

  @override
  State<ScriptForProduct> createState() => _ScriptForProductState();
}

class _ScriptForProductState extends State<ScriptForProduct>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  String? selectedValue1;
  final List<String> _productsList = [
    '원스톱 100세 암보험 III',
    '백세시대 꼭하나 건강보험',
    '뉴 이 좋은 치아보험',
  ];

  bool isVisible = true;

  String beginning = '';
  List<String> description = List<String>.filled(3, '');
  String closing = '';

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        height: 10.h,
      ),
      Container(
        padding: EdgeInsets.only(left: 25.w, right: 25.w),
        child: DropdownButtonHideUnderline(
            child: DropdownButton2(
          isExpanded: true,
          alignment: Alignment.center,
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 20.sp,
          iconEnabledColor: Colors.black,
          buttonHeight: 40.h,
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.white,
          ),
          buttonElevation: 2,
          itemHeight: 30.h,
          itemWidth: 310.w,
          dropdownMaxHeight: 150.h,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            color: Colors.white,
          ),
          dropdownElevation: 3,
          scrollbarRadius: Radius.circular(40.r),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(0, 0),
          hint: Text(
            '상품 선택',
            style: TextStyle(
                fontSize: 18.sp, color: Colors.black, fontFamily: 'customfont'),
          ),
          items: _productsList
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      item,
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontFamily: 'customfont'),
                    ),
                  ))
              .toList(),
          value: selectedValue1,
          onChanged: (value) {
            setState(() {
              selectedValue1 = value as String;
              beginning = scriptListFromEachProduct[selectedValue1][0];
              description[0] = scriptListFromEachProduct[selectedValue1][1];
              description[1] = scriptListFromEachProduct[selectedValue1][2];
              if (scriptListFromEachProduct[selectedValue1][3] == '') {
                isVisible = false;
              } else if (scriptListFromEachProduct[selectedValue1][3] != '') {
                isVisible = true;
                description[2] = scriptListFromEachProduct[selectedValue1][3];
              }
              closing = scriptListFromEachProduct[selectedValue1][4];
            });
          },
        )),
      ),
      SizedBox(
        height: 20.h,
      ),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: CustomBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomStyledText('[ 도입  ]', 20),
            CustomStyledText(beginning, 18),
            Padding(padding: EdgeInsets.only(top: 5.h)),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: CustomBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomStyledText('[ 상품설명 1 ]', 20),
            CustomStyledText(description[0], 18),
            Padding(padding: EdgeInsets.only(top: 5.h)),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: CustomBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomStyledText('[ 상품설명 2 ]', 20),
            CustomStyledText(description[1], 18),
            Padding(padding: EdgeInsets.only(top: 5.h)),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Visibility(
        visible: isVisible,
        child: Container(
          margin: EdgeInsets.only(left: 10.w, right: 10.w),
          padding: const EdgeInsets.all(15),
          decoration: CustomBoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomStyledText('[ 상품설명 3 ]', 20),
              CustomStyledText(description[2], 18),
              Padding(padding: EdgeInsets.only(top: 5.h)),
            ],
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: CustomBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomStyledText('[ 클로징 ]', 20),
            CustomStyledText(closing, 18),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Padding(padding: EdgeInsets.only(top: 100.h)),
          ],
        ),
      )
    ]);
  }
}

StyledText CustomStyledText(String text, int fontsize) {
  return StyledText(
    text: text,
    textAlign: TextAlign.start,
    maxLines: 100,
    style: TextStyle(
        fontSize: fontsize.sp, color: Colors.black, fontFamily: 'customfont'),
    tags: {
      'b': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.bold)),
      'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
      'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
    },
  );
}

BoxDecoration CustomBoxDecoration() {
  return BoxDecoration(
      color: Colors.white, border: Border.all(color: Colors.black38, width: 2));
}

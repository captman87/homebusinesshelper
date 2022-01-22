// ignore_for_file: file_names

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
  String? selectedValue2;
  final List<String> _productsList = [
    '원스톱 100세 암보험 III',
    '백세시대 꼭하나 건강보험',
    '뉴 이 좋은 치아보험',
    '든든 튼튼 치매보험',
  ];
  List<String> _scriptListfromProduct = [];

  Color textColor = Colors.grey;
  String listNameFromProduct = '(상품을 먼저 선택 해주세요)';

  String beginning = '';
  List<String> description = List<String>.filled(3, '');
  String closing = '';

  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        height: 10.h,
      ),
      DropdownButtonHideUnderline(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: StyledText(
                    text: '상품 선택',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontFamily: 'customfont'),
                    tags: {
                      'b': StyledTextTag(
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      'cr': StyledTextTag(
                          style: const TextStyle(color: Colors.red)),
                      'cb': StyledTextTag(
                          style: const TextStyle(color: Colors.blue)),
                    },
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: _productsList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      alignment: AlignmentDirectional.center,
                      child: StyledText(
                        text: item,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'customfont'),
                        tags: {
                          'b': StyledTextTag(
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          'cr': StyledTextTag(
                              style: const TextStyle(color: Colors.red)),
                          'cb': StyledTextTag(
                              style: const TextStyle(color: Colors.blue)),
                        },
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue1,
            onChanged: (value) {
              setState(() {
                selectedValue1 = value as String;
                _scriptListfromProduct =
                    scriptlist[selectedValue1] as List<String>;
                textColor = Colors.black;
                listNameFromProduct = '스크립트 종류를 선택 해주세요';
              });
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            iconSize: 20.sp,
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.grey,
            buttonHeight: 30.h,
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
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
          ),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Container(
        padding: EdgeInsets.only(left: 25.w, right: 25.w),
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: [
              Expanded(
                child: StyledText(
                  text: listNameFromProduct,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: textColor,
                      fontFamily: 'customfont'),
                  tags: {
                    'b': StyledTextTag(
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    'cr': StyledTextTag(
                        style: const TextStyle(color: Colors.red)),
                    'cb': StyledTextTag(
                        style: const TextStyle(color: Colors.blue)),
                  },
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: _scriptListfromProduct
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    alignment: AlignmentDirectional.center,
                    child: StyledText(
                      text: item,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontFamily: 'customfont'),
                      tags: {
                        'b': StyledTextTag(
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        'cr': StyledTextTag(
                            style: const TextStyle(color: Colors.red)),
                        'cb': StyledTextTag(
                            style: const TextStyle(color: Colors.blue)),
                      },
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue2,
          onChanged: (value) {
            setState(() {
              selectedValue2 = value as String;
              beginning = scriptListFromEachProduct[selectedValue2][0];
              description[0] = scriptListFromEachProduct[selectedValue2][1];
              description[1] = scriptListFromEachProduct[selectedValue2][2];
              description[2] = scriptListFromEachProduct[selectedValue2][3];
              closing = scriptListFromEachProduct[selectedValue2][4];
              _visible = true;
            });
          },
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 20.sp,
          buttonHeight: 30.h,
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
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
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText(
              text: '[도입]',
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            StyledText(
              text: beginning,
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Visibility(
              visible: _visible,
              child: Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(90.w, 50.h))),
                    child: StyledText(
                      text: '예상 반론',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: 'customfont'),
                      tags: {
                        'b': StyledTextTag(
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        'cr': StyledTextTag(
                            style: const TextStyle(color: Colors.red)),
                        'cb': StyledTextTag(
                            style: const TextStyle(color: Colors.blue)),
                      },
                    )),
                height: 30.h,
              ),
            )
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText(
              text: '[ 상품설명 1 ]',
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            StyledText(
              text: description[0],
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Visibility(
              visible: _visible,
              child: Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(90.w, 50.h))),
                    child: StyledText(
                      text: '예상 반론',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: 'customfont'),
                      tags: {
                        'b': StyledTextTag(
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        'cr': StyledTextTag(
                            style: const TextStyle(color: Colors.red)),
                        'cb': StyledTextTag(
                            style: const TextStyle(color: Colors.blue)),
                      },
                    )),
                height: 30.h,
              ),
            )
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText(
              text: '[ 상품설명 2 ]',
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            StyledText(
              text: description[1],
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Visibility(
              visible: false,
              child: Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(90.w, 50.h))),
                    child: StyledText(
                      text: '예상 반론',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: 'customfont'),
                      tags: {
                        'b': StyledTextTag(
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        'cr': StyledTextTag(
                            style: const TextStyle(color: Colors.red)),
                        'cb': StyledTextTag(
                            style: const TextStyle(color: Colors.blue)),
                      },
                    )),
                height: 30.h,
              ),
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText(
              text: '[ 상품설명 3 ]',
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            StyledText(
              text: description[2],
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Visibility(
              visible: _visible,
              child: Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(90.w, 50.h))),
                    child: StyledText(
                      text: '예상 반론',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: 'customfont'),
                      tags: {
                        'b': StyledTextTag(
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        'cr': StyledTextTag(
                            style: const TextStyle(color: Colors.red)),
                        'cb': StyledTextTag(
                            style: const TextStyle(color: Colors.blue)),
                      },
                    )),
                height: 30.h,
              ),
            )
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText(
              text: '[ 클로징 ]',
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            StyledText(
              text: closing,
              textAlign: TextAlign.start,
              maxLines: 100,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontFamily: 'customfont'),
              tags: {
                'b': StyledTextTag(
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
                'cb': StyledTextTag(style: const TextStyle(color: Colors.blue)),
              },
              overflow: TextOverflow.ellipsis,
            ),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Visibility(
              visible: _visible,
              child: Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(90.w, 50.h))),
                    child: StyledText(
                      text: '예상 반론',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: 'customfont'),
                      tags: {
                        'b': StyledTextTag(
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        'cr': StyledTextTag(
                            style: const TextStyle(color: Colors.red)),
                        'cb': StyledTextTag(
                            style: const TextStyle(color: Colors.blue)),
                      },
                    )),
                height: 30.h,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 100.h)),
          ],
        ),
      )
    ]);
  }
}

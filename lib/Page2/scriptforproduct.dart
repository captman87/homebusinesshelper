// ignore_for_file: file_names

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScriptForProduct extends StatefulWidget {
  const ScriptForProduct({Key? key}) : super(key: key);

  @override
  State<ScriptForProduct> createState() => _ScriptForProductState();
}

class _ScriptForProductState extends State<ScriptForProduct> {
  String? selectedValue1;
  String? selectedValue2;
  final List<String> _productsList = [
    '원스톱 100세 암보험 III',
    '백세시대 꼭하나 건강보험',
    '뉴 이 좋은 치아보험',
    '든든 튼튼 치매보험',
  ];

  final List<String> _beginningsList = [
    '도입 버젼 1',
    '도입 버젼 2',
  ];
  String beginning = '';
  String description = '';
  String closing = '';
  bool isUnSelectedProduct = true;
  bool isUnSelectedBeginning = true;
  bool isUnSelectedDescription = true;
  Color beginningColor = Colors.grey;
  Color descriptionColor = Colors.grey;
  Color closingColor = Colors.grey;

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
                  child: Text(
                    '상품 선택',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontFamily: 'customfont'),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: _productsList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'customfont'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue1,
            onChanged: (value) {
              setState(() {
                selectedValue1 = value as String;
                isUnSelectedProduct = false;
                beginningColor = Colors.white;
                if (selectedValue1 == '원스톱 100세 암보험 III') {
                } else {}
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
      AbsorbPointer(
        absorbing: isUnSelectedProduct,
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    '도입 선택',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontFamily: 'customfont'),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: _productsList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'customfont'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue1,
            onChanged: (value) {
              setState(() {
                selectedValue1 = value as String;
                isUnSelectedBeginning = false;
                descriptionColor = Colors.white;
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
              color: beginningColor,
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
        height: 2.5.h,
      ),
      AbsorbPointer(
        absorbing: isUnSelectedBeginning,
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    '상품설명 선택',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontFamily: 'customfont'),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: _productsList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'customfont'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue2,
            onChanged: (value) {
              setState(() {
                selectedValue1 = value as String;
                isUnSelectedDescription = false;
                closingColor = Colors.white;
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
              color: descriptionColor,
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
        height: 2.5.h,
      ),
      AbsorbPointer(
        absorbing: isUnSelectedDescription,
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    '클로징 선택',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontFamily: 'customfont'),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: _productsList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'customfont'),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue1,
            onChanged: (value) {
              setState(() {
                selectedValue1 = value as String;
                if (selectedValue1 == '원스톱 100세 암보험 III') {}
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
              color: closingColor,
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
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '[ 도입 ]',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            Text(beginning)
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '[ 상품설명 ]',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            Text(description)
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 2.5.h)),
      Container(
        margin: EdgeInsets.only(left: 10.w, right: 10.w),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '[ 클로징 ]',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            Text(closing)
          ],
        ),
      )
    ]);
  }
}

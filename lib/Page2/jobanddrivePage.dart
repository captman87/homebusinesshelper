// ignore_for_file: file_names

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobAndDrive extends StatefulWidget {
  const JobAndDrive({Key? key}) : super(key: key);

  @override
  State<JobAndDrive> createState() => _JobAndDriveState();
}

class _JobAndDriveState extends State<JobAndDrive> {
  String? selectedValue1;
  String? selectedValue2;
  final List<String> _jobname = [
    '전업주부',
    '사무직',
    '생산(현장) 관리직',
    '기타 생산(현장)직',
    '의료 사무직',
    '병원 사무직',
    '의사, 간호사',
    '치과의사, 기공사',
    '보험 설계사',
  ];
  final List<String> _drive = [
    '운전안함',
    '승용차 (자가용)',
    '승합차 11인승 또는 밴/출퇴근용',
    '그 외 인승 및 용도의 승합차',
    '승합차 (영업용, 26인승 이상)',
    '화물차 (자가용)',
    '화물차 (영업용)',
    '오토바이 (자가용)',
    '오토바이 (영업용)',
    '영업용 승용차 (일반택시포함)',
    '영업용 승용차 (개인택시)',
    '일반건설기계',
    '6종건설기계',
    '농기계(경운기, 트랙터 포함)',
    '기타',
  ];
  // final List<Map<String, dynamic>> _testList = [
  //   {"name": '전업주부', 'desc': '전업주부', "role": 1},
  //   {"name": '사무직', 'desc': '내근 사무직', "role": 2},
  //   {"name": '생산(현장) 관리직', 'desc': '생산(현장) 관리자', "role": 3},
  //   {"name": '기타 생산(현장)직', 'desc': '생산(현장) 근무', "role": 4},
  //   {"name": '의료 사무직', 'desc': '의원 원무과 직원', "role": 5},
  //   {"name": '병원 사무직', 'desc': '병원급 이상 의료 사무직', "role": 5},
  //   {"name": '의사, 간호사', 'desc': '의료계 종사자', "role": 6},
  //   {"name": '치과의사, 기공사', 'desc': '치과 근무(치위생사)', "role": 6},
  //   {"name": '보험 설계사', 'desc': '자사, 타사 보험설계사', "role": 7},
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        height: 20.h,
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
                    '직업 선택',
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
            items: _jobname
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
                print(selectedValue1);
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
      DropdownButtonHideUnderline(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    '운전 종류',
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
            items: _drive
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
                selectedValue2 = value as String;
                print(selectedValue2);
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
      Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 25.w, top: 20.h),
          child: ElevatedButton(
              onPressed: () {
                print(selectedValue1);
                print(selectedValue2);
              },
              child: Text('조회',
                  style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont')),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                minimumSize: Size(70.w, 35.h),
              )))
    ]);
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';

List<String> cancerproductlist = [
  '1. 원스톱 슈퍼 암보험',
  '2. 원스톱 100세 암보험III',
  '3. AIA 평생보장 암보험III',
  '4. 꼭 필요한 암보험III',
  '5. AIA 초간편 건강보험-암보장형',
];

class CancerProductList extends StatelessWidget {
  const CancerProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.w),
        child: AppBar(
            title: Text(
              titlelist[0],
              style: TextStyle(fontSize: 20.sp),
            ),
            centerTitle: true,
            backgroundColor: Colors.redAccent),
      ),
      body: ListView(children: [
        Padding(padding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w)),
        Container(
          color: Colors.grey[400],
          height: 30.w,
          width: MediaQuery.of(context).size.width,
          child: Text(
            '표준체 암보험 - 갱신형',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          alignment: Alignment.center,
        ),
        ListTile(
            title: Text(
              cancerproductlist[0],
              style: TextStyle(
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.start,
            ),
            contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
            onTap: () {}),
        ListTile(
            title: Text(
              cancerproductlist[1],
              style: TextStyle(
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.start,
            ),
            contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
            onTap: () {}),
        Container(
          color: Colors.grey[400],
          height: 30.w,
          width: MediaQuery.of(context).size.width,
          child: Text(
            '표준체 암보험 - 비갱신',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          alignment: Alignment.center,
        ),
        ListTile(
            title: Text(
              cancerproductlist[2],
              style: TextStyle(
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.start,
            ),
            contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
            onTap: () {}),
        Container(
          color: Colors.grey[400],
          height: 30.w,
          width: MediaQuery.of(context).size.width,
          child: Text(
            '간편심사 암보험 - 갱신형',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          alignment: Alignment.center,
        ),
        ListTile(
            title: Text(
              cancerproductlist[3],
              style: TextStyle(fontSize: 20.sp),
              textAlign: TextAlign.start,
            ),
            contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
            onTap: () {}),
        ListTile(
            title: Text(
              cancerproductlist[4],
              style: TextStyle(fontSize: 20.sp),
              textAlign: TextAlign.start,
            ),
            contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
            onTap: () {}),
      ]),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';

List<String> gungangproductlist = [
  '1. 백세시대 꼭하나 건강보험-일반형',
  '2. 백세시대 꼭하나 건강보험-간편형',
  '3. 실속 하나로 건강보험II-일반형',
];

class GungangProductList extends StatelessWidget {
  const GungangProductList({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w)),
          Container(
            color: Colors.grey[400],
            height: 30.w,
            width: MediaQuery.of(context).size.width,
            child: Text(
              '갱신형',
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            alignment: Alignment.center,
          ),
          ListTile(
              title: Text(
                gungangproductlist[0],
                style: TextStyle(
                  fontSize: 20.sp,
                ),
                textAlign: TextAlign.start,
              ),
              contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
              onTap: () {}),
          ListTile(
              title: Text(
                gungangproductlist[1],
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
              '비갱신형',
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            alignment: Alignment.center,
          ),
          ListTile(
              title: Text(
                gungangproductlist[2],
                style: TextStyle(fontSize: 20.sp),
                textAlign: TextAlign.start,
              ),
              contentPadding: EdgeInsets.fromLTRB(10.w, 7.5.w, 10.w, 7.5.w),
              onTap: () {}),
        ],
      ),
    );
  }
}

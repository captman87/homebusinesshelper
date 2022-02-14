// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelfStudyPage extends StatelessWidget {
  const SelfStudyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return ListView(
        children: [
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  child: Text(
                    '암\n기본 용어 학습',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  child: Text(
                    '암의\n병기 구분',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '암 종류별\n평균 치료비',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  child: Text(
                    '표적\n항암치료\n공부하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  child: Text(
                    '표적\n항암치료\n평균 치료비',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '암 종류별\n평균 치료비',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[300],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[600],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
              const Padding(padding: EdgeInsets.only(left: 10, right: 10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[800],
                      fixedSize: Size(100.w, 80.h)),
                  onPressed: () {},
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'customfont'),
                  )),
            ],
          ),
        ],
      );
    }));
  }
}

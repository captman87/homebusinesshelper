// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';

List<String> chosung = [
  'ㄱ',
  'ㄴ',
  'ㄷ',
  'ㄹ',
  'ㅁ',
  'ㅂ',
  'ㅅ',
  'ㅇ',
  'ㅈ',
  'ㅊ',
  'ㅋ',
  'ㅌ',
  'ㅍ',
  'ㅎ'
];

ListView lv = ListView.builder(
  physics: const ClampingScrollPhysics(),
  itemCount: list.diseaseinfo.length,
  itemBuilder: (context, index) {
    return CustomListTile(
      index: index,
    );
  },
);

class Custom_viewtile extends StatefulWidget {
  const Custom_viewtile({Key? key}) : super(key: key);

  @override
  State<Custom_viewtile> createState() => _Custom_viewtileState();
}

class _Custom_viewtileState extends State<Custom_viewtile> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        height: 105.w,
        child: Container(
          color: Colors.green[50],
          child: GridView.count(
            mainAxisSpacing: 1.w,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 7,
            children: List<Widget>.generate(
                14,
                (index) => Container(
                      color: Colors.amberAccent,
                      margin: EdgeInsets.all(2.5.h),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            int chosungNum = index;
                            lv = ListView.builder(
                                padding: EdgeInsets.all(10.w),
                                itemCount: list.diseaseinfo.length,
                                itemBuilder: (context, index) {
                                  if (list.diseaseinfo[index].firstSearch ==
                                          chosung[chosungNum] ||
                                      list.diseaseinfo[index].secondSearch ==
                                          chosung[chosungNum] ||
                                      list.diseaseinfo[index].thirdSearch ==
                                          chosung[chosungNum]) {
                                    return CustomListTile(
                                      index: index,
                                    );
                                  }
                                  return const Padding(
                                      padding: EdgeInsets.zero);
                                });
                          });
                        },
                        child: Text(
                          chosung[index],
                          style: TextStyle(
                              fontSize: 20.sp, fontFamily: 'customfont'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )),
          ),
        ),
      ),
      Expanded(child: lv)
    ]);
  }
}

class CustomListTile extends StatelessWidget {
  int index;
  CustomListTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              list.diseaseinfo[index].diseasename,
              style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10.w),
            ),
          ],
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext ctx) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0.r)),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        list.diseaseinfo[index].diseasename,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'customfont'),
                      ),
                      Divider(
                        thickness: 3.w,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10.w)),
                      Text(
                        '입원, 수술',
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'customfont'),
                      ),
                      Text(
                        list.diseaseinfo[index].operation,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.blue[500],
                            fontFamily: 'customfont'),
                      ),
                      Divider(
                        thickness: 1.w,
                        indent: 70.w,
                        endIndent: 70.w,
                        color: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 25.w)),
                      Text(
                        '뇌출혈, 급성심근경색',
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'customfont'),
                      ),
                      Text(
                        list.diseaseinfo[index].twoCI,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.blue[500],
                            fontFamily: 'customfont'),
                      ),
                      Divider(
                        thickness: 1.w,
                        indent: 70.w,
                        endIndent: 70.w,
                        color: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 25.w)),
                      Text(
                        '암',
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'customfont'),
                      ),
                      Text(
                        list.diseaseinfo[index].cancer,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.blue[500],
                            fontFamily: 'customfont'),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 70.w,
                        endIndent: 70.w,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          '확인',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.red,
                              fontFamily: 'customfont'),
                        )),
                  ],
                );
              });
        },
      ),
    );
  }
}

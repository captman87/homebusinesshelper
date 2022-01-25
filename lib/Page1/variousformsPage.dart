// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';

class VariousFormsPage extends StatelessWidget {
  const VariousFormsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        children: [
          Container(
            height: constraints.maxHeight / 3,
            color: Colors.amber,
            child: GridView.count(
              // physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: (3 / 2),
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(10.w),
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: StyledText(
                      text: '부담보동의\n스크립트',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
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
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: StyledText(
                      text: '간단녹취\n스크립트',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
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
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: StyledText(
                      text: '상설동의\n스크립트',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
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
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: StyledText(
                      text: '특약삭제\n스크립트',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
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
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: StyledText(
                      text: '청약철회\n스크립트',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
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
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: StyledText(
                      text: '철회방어\n스크립트',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
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
              ],
            ),
          ),
        ],
      );
    }));
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VariousFormsPage extends StatelessWidget {
  const VariousFormsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return ListView(
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/budambo');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue[800],
                            fixedSize: Size(100.w, 80.h)),
                        child: Text(
                          '부담보\n스크립트',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, fontFamily: 'customfont'),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10)),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/easyrecord');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue[600],
                            fixedSize: Size(100.w, 80.h)),
                        child: Text(
                          '간단녹취\n스크립트',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, fontFamily: 'customfont'),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue[400],
                            fixedSize: Size(100.w, 80.h)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/sangsulagree');
                        },
                        child: Text(
                          '상설동의\n스크립트',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, fontFamily: 'customfont'),
                        )),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[800],
                            fixedSize: Size(100.w, 80.h)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/tukyakdel');
                        },
                        child: Text(
                          '특약삭제\n스크립트',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, fontFamily: 'customfont'),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[600],
                            fixedSize: Size(100.w, 80.h)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/chungchul');
                        },
                        child: Text(
                          '청약철회\n스크립트',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, fontFamily: 'customfont'),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[400],
                            fixedSize: Size(100.w, 80.h)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/chunchuldef');
                        },
                        child: Text(
                          '철회방어\n스크립트',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp, fontFamily: 'customfont'),
                        )),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
              ],
            ),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/admincheck');
        },
        child: const Text('Admin'),
        elevation: 0.0,
        backgroundColor: Colors.red[600],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

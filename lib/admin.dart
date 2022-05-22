// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AdminCheck extends StatefulWidget {
  const AdminCheck({Key? key}) : super(key: key);

  @override
  _AdminCheckState createState() => _AdminCheckState();
}

class _AdminCheckState extends State<AdminCheck> {
  final _adminCheckController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('관리자 확인',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont')),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
                child: Column(children: [
                  TextField(
                    controller: _adminCheckController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: '비밀번호',
                        labelStyle: TextStyle(
                            fontSize: 20.sp, fontFamily: 'customfont')),
                    maxLength: 8,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(fontSize: 17.sp, fontFamily: 'customfont'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 50)),
                  ElevatedButton(
                    onPressed: () {
                      if (_adminCheckController.text == '19871987') {
                        Navigator.pushReplacementNamed(context, '/admin');
                      } else {
                        Alert(
                          context: context,
                          type: AlertType.error,
                          title: '비밀번호를 확인 해주세요.',
                          buttons: [
                            DialogButton(
                              child: Text(
                                '확인',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: 'customfont',
                                    color: Colors.white),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 100.w,
                              height: 30.h,
                              color: Colors.redAccent,
                            )
                          ],
                        ).show();
                      }
                    },
                    child: Text('확인',
                        style: TextStyle(
                            fontSize: 20.sp, fontFamily: 'customfont')),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red, fixedSize: Size(180.w, 50.h)),
                  )
                ]))));
  }
}

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  final _unumController = TextEditingController();
  final _unameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('계정 등록/삭제',
            style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont')),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
            child: Column(
              children: [
                TextField(
                  controller: _unumController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: '사번',
                      labelStyle:
                          TextStyle(fontSize: 20.sp, fontFamily: 'customfont')),
                  maxLength: 9,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 17.sp, fontFamily: 'customfont'),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                TextField(
                  controller: _unameController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: '이름',
                      labelStyle:
                          TextStyle(fontSize: 20.sp, fontFamily: 'customfont')),
                  style: TextStyle(fontSize: 17.sp, fontFamily: 'customfont'),
                ),
                const Padding(padding: EdgeInsets.only(top: 50)),
                CustomElevatedButton().InsertData('정보 등록', fireStore,
                    _unumController, _unameController, context),
                const Padding(padding: EdgeInsets.only(top: 20)),
                CustomElevatedButton().DeleteData('정보 삭제', fireStore,
                    _unumController, _unameController, context)
              ],
            )),
      ),
    );
  }
}

class CustomElevatedButton {
  Widget InsertData(
      String text,
      FirebaseFirestore fireStore,
      TextEditingController _unumController,
      TextEditingController _unameController,
      BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_unumController.text.length == 9 &&
            _unameController.text.isNotEmpty) {
          try {
            fireStore
                .collection('Center_userinfo')
                .doc(_unumController.text)
                .set({"uname": _unameController.text}).then((value) => Alert(
                      context: context,
                      type: AlertType.success,
                      title: '정보 등록 성공',
                      buttons: [
                        DialogButton(
                          child: Text(
                            '확인',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: 'customfont',
                                color: Colors.white),
                          ),
                          onPressed: () => Navigator.pop(context),
                          width: 100.w,
                          height: 30.h,
                          color: Colors.redAccent,
                        )
                      ],
                    ).show());
          } catch (e) {
            Alert(
              context: context,
              type: AlertType.error,
              title: '정보 등록 실패',
              buttons: [
                DialogButton(
                  child: Text(
                    '확인',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'customfont',
                        color: Colors.white),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 100.w,
                  height: 30.h,
                  color: Colors.redAccent,
                )
              ],
            ).show();
          }
        } else {
          Alert(
            context: context,
            type: AlertType.error,
            title: '정보를 확인 해주세요.',
            buttons: [
              DialogButton(
                child: Text(
                  '확인',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'customfont',
                      color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
                width: 100.w,
                height: 30.h,
                color: Colors.redAccent,
              )
            ],
          ).show();
        }
      },
      child: Text(text,
          style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont')),
      style: ElevatedButton.styleFrom(
          primary: Colors.green, fixedSize: Size(180.w, 50.h)),
    );
  }

  Widget DeleteData(
      String text,
      FirebaseFirestore fireStore,
      TextEditingController _unumController,
      TextEditingController _unameController,
      BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_unumController.text.length == 9 &&
            _unameController.text.isNotEmpty) {
          try {
            fireStore
                .collection('Center_userinfo')
                .doc(_unumController.text)
                .delete()
                .then((value) => Alert(
                      context: context,
                      type: AlertType.success,
                      title: '정보 삭제 성공',
                      buttons: [
                        DialogButton(
                          child: Text(
                            '확인',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: 'customfont',
                                color: Colors.white),
                          ),
                          onPressed: () => Navigator.pop(context),
                          width: 100.w,
                          height: 30.h,
                          color: Colors.redAccent,
                        )
                      ],
                    ).show());
          } catch (e) {
            Alert(
              context: context,
              type: AlertType.error,
              title: '정보 삭제 실패',
              buttons: [
                DialogButton(
                  child: Text(
                    '확인',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'customfont',
                        color: Colors.white),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 100.w,
                  height: 30.h,
                  color: Colors.redAccent,
                )
              ],
            ).show();
          }
        } else {
          Alert(
            context: context,
            type: AlertType.error,
            title: '정보를 확인 해주세요.',
            buttons: [
              DialogButton(
                child: Text(
                  '확인',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'customfont',
                      color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
                width: 100.w,
                height: 30.h,
                color: Colors.redAccent,
              )
            ],
          ).show();
        }
      },
      child: Text(text,
          style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont')),
      style: ElevatedButton.styleFrom(
          primary: Colors.red, fixedSize: Size(180.w, 50.h)),
    );
  }
}

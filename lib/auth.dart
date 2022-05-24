// ignore_for_file: avoid_print, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class GetAuth extends StatefulWidget {
  const GetAuth({Key? key}) : super(key: key);

  @override
  _GetAuthState createState() => _GetAuthState();
}

class _GetAuthState extends State<GetAuth> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  final _unumController = TextEditingController();
  final _unameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인',
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
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        fixedSize: Size(180.w, 50.h)),
                    onPressed: () async {
                      try {
                        DocumentSnapshot data = await fireStore
                            .collection('Center_userinfo')
                            .doc(_unumController.text)
                            .get();

                        if (data['uname'] == _unameController.text) {
                          const storage = FlutterSecureStorage();
                          await storage.write(
                              key: '저장된 사번', value: _unumController.text);
                          await storage.write(
                              key: '저장된 이름', value: _unameController.text);
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
                          );
                        } else if (data['uname'] != _unameController.text) {
                          Alert(
                            context: context,
                            type: AlertType.info,
                            title: '이름 을 다시 확인 해주세요.',
                            buttons: [
                              DialogButton(
                                onPressed: () => Navigator.pop(context),
                                width: 100.w,
                                height: 30.h,
                                color: Colors.redAccent,
                                child: Text(
                                  '확인',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: 'customfont',
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ).show();
                        }
                      } catch (e) {
                        Alert(
                          context: context,
                          type: AlertType.info,
                          title: '사번을 다시 확인 해주세요.',
                          buttons: [
                            DialogButton(
                              onPressed: () => Navigator.pop(context),
                              width: 100.w,
                              height: 30.h,
                              color: Colors.redAccent,
                              child: Text(
                                '확인',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: 'customfont',
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ).show();
                      }
                    },
                    child: Text('로그인',
                        style: TextStyle(
                            fontSize: 20.sp, fontFamily: 'customfont')))
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

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
        title: const Text('로그인 테스트'),
        centerTitle: true,
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _unumController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: '사번'),
              ),
              TextField(
                controller: _unameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: '이름'),
              ),
              ElevatedButton(
                  child: const Text('로그인'),
                  onPressed: () async {
                    try {
                      DocumentSnapshot data = await fireStore
                          .collection('Center_userinfo')
                          .doc(_unumController.text)
                          .get();
                      if (data['uname'] == _unameController.text) {
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setString('저장된사번', _unumController.text);
                        final counter = prefs.getString('저장된사번') ?? 0;
                        print(counter);
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()),
                        );
                      } else {
                        print('실패2');
                      }
                    } catch (e) {
                      print('실패');
                    }
                  })
            ],
          )),
    );
  }
}

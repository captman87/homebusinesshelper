// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';

List<String> productlist = [
  '1. 암보험',
  '2. 건강보험',
  '3. 치아보험',
  '4. 치매보험',
  '5. 정기보험'
];

class ProductInfoList extends StatelessWidget {
  const ProductInfoList({Key? key}) : super(key: key);

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
      body: ListView.builder(
        itemCount: productlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  productlist[index],
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            contentPadding: EdgeInsets.fromLTRB(15.w, 7.5.w, 15.w, 7.5.w),
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/cancer');
                  break;
                case 1:
                  Navigator.pushNamed(context, '/gungang');
                  break;
                case 2:
                  // Navigator.pushNamed(context, '/wanhwa');
                  break;
                case 3:
                  // Navigator.pushNamed(context, '/wanhwa');
                  break;
                case 4:
                  // Navigator.pushNamed(context, '/wanhwa');
                  break;
              }
            },
          );
        },
      ),
    );
  }
}

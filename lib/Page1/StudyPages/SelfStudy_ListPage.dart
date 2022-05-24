// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../selfstudyPage.dart';
import 'SelfStudy_ClickedPage.dart';

int tempIndex = 0;

class SelfStudy_List extends StatefulWidget {
  const SelfStudy_List({Key? key}) : super(key: key);

  @override
  State<SelfStudy_List> createState() => _SelfStudy_ListState();
}

class _SelfStudy_ListState extends State<SelfStudy_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.h),
        child: AppBar(
            title: Text(
              items[indexNum].toString().replaceAll('\n바로가기', ''),
              style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: CustomColor(indexNum)),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return GridView.count(
          crossAxisCount: 3,
          children: List<Widget>.generate(
            Items_list(indexNum),
            (index) => Container(
              margin: EdgeInsets.all(8.h),
              child: OutlinedButton(
                onPressed: () {
                  tempIndex = index;
                  Navigator.pushNamed(context, '/1');
                },
                style: CustomButtonStyle_2(index),
                child: Text(
                  Item_Select(indexNum)[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontFamily: 'customfont',
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

ButtonStyle CustomButtonStyle_2(int index) {
  if (index < 3) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.teal[400]));
  } else if (index < 6) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green[400]));
  } else if (index < 9) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue[400]));
  } else if (index < 12) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.pink[400]));
  } else if (index < 15) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.deepPurple[400]));
  } else if (index < 18) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green[400]));
  } else if (index < 21) {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.teal[400]));
  } else {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey[800]));
  }
}

List<String> Item_Select(int indexNum) {
  if (indexNum == 0) {
    return narration_items;
  } else if (indexNum == 1) {
    return cancer_items;
  } else if (indexNum == 2) {
    return heart_items;
  } else if (indexNum == 3) {
    return brain_items;
  } else if (indexNum == 4) {
    return dimentia_items;
  } else if (indexNum == 5) {
    return diabetes_items;
  } else if (indexNum == 6) {
    return death_items;
  }
  return cancer_items;
}

int Items_list(int index) {
  if (index == 0) {
    return narration_items.length;
  } else if (index == 1) {
    return cancer_items.length;
  } else if (index == 2) {
    return heart_items.length;
  } else if (index == 3) {
    return brain_items.length;
  } else if (index == 4) {
    return dimentia_items.length;
  } else if (index == 5) {
    return diabetes_items.length;
  } else if (index == 6) {
    return death_items.length;
  }
  return 0;
}

// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/Page1/StudyPages/SelfStudy_ListPage.dart';
import 'package:homebusinesshelper/Page1/selfstudyPage.dart';
import 'package:extended_image/extended_image.dart';

class SelfStudy_ClickedPage extends StatelessWidget {
  const SelfStudy_ClickedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(35.h),
          child: AppBar(
              title: Text(
                Product_Info(indexNum)[tempIndex].toString(),
                style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
              ),
              centerTitle: true,
              backgroundColor: CustomColor(indexNum))),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomContainer_SelfStudy(indexNum, tempIndex),
        ],
      ),
    );
  }
}

List<String> Product_Info(int indexNum) {
  if (indexNum == 0) {
    return cancer_items;
  } else if (indexNum == 1) {
    return heart_items;
  } else if (indexNum == 2) {
    return brain_items;
  } else if (indexNum == 3) {
    return dimentia_items;
  } else if (indexNum == 4) {
    return diabetes_items;
  } else if (indexNum == 5) {
    return death_items;
  }
  return cancer_items;
}

Color? CustomColor(int index) {
  if (indexNum == 0) {
    return Colors.red[400];
  } else if (indexNum == 1) {
    return Colors.green[400];
  } else if (indexNum == 2) {
    return Colors.blue[400];
  } else if (indexNum == 3) {
    return Colors.pink[400];
  } else if (indexNum == 4) {
    return Colors.orange[400];
  } else {
    return Colors.deepPurple[400];
  }
}

Row CustomContainer_SelfStudy(int indexNum, int tempIndex) {
  if (indexNum == 0) {
    switch (tempIndex) {
      case 0:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/12.png'),
            ExtendedImage.asset('assets/images/13.png'),
            ExtendedImage.asset('assets/images/14.png'),
            ExtendedImage.asset('assets/images/15.png'),
            ExtendedImage.asset('assets/images/16.png'),
          ],
        );
      case 1:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/17.png'),
            ExtendedImage.asset('assets/images/18.png'),
            ExtendedImage.asset('assets/images/19.png'),
            ExtendedImage.asset('assets/images/20.png'),
          ],
        );
      case 2:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/21.png'),
            ExtendedImage.asset('assets/images/22.png'),
            ExtendedImage.asset('assets/images/23.png'),
            ExtendedImage.asset('assets/images/24.png'),
            ExtendedImage.asset('assets/images/25.png'),
            ExtendedImage.asset('assets/images/26.png'),
            ExtendedImage.asset('assets/images/27.png'),
            ExtendedImage.asset('assets/images/28.png'),
            ExtendedImage.asset('assets/images/29.png'),
            ExtendedImage.asset('assets/images/30.png'),
          ],
        );
      case 3:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/31.png'),
            ExtendedImage.asset('assets/images/32.png'),
            ExtendedImage.asset('assets/images/33.png'),
            ExtendedImage.asset('assets/images/34.png'),
          ],
        );
      case 4:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/35.png'),
            ExtendedImage.asset('assets/images/36.png'),
            ExtendedImage.asset('assets/images/37.png'),
            ExtendedImage.asset('assets/images/38.png'),
          ],
        );
      case 5:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/39.png'),
            ExtendedImage.asset('assets/images/40.png'),
            ExtendedImage.asset('assets/images/41.png'),
            ExtendedImage.asset('assets/images/42.png'),
          ],
        );
      case 6:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/43.png'),
            ExtendedImage.asset('assets/images/44.png'),
            ExtendedImage.asset('assets/images/45.png'),
            ExtendedImage.asset('assets/images/46.png'),
          ],
        );
      case 7:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/47.png'),
            ExtendedImage.asset('assets/images/48.png'),
            ExtendedImage.asset('assets/images/49.png'),
            ExtendedImage.asset('assets/images/50.png'),
          ],
        );
      case 8:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/51.png'),
            ExtendedImage.asset('assets/images/52.png'),
            ExtendedImage.asset('assets/images/53.png'),
            ExtendedImage.asset('assets/images/54.png'),
          ],
        );
      case 9:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/55.png'),
            ExtendedImage.asset('assets/images/56.png'),
            ExtendedImage.asset('assets/images/57.png'),
            ExtendedImage.asset('assets/images/58.png'),
            ExtendedImage.asset('assets/images/59.png'),
          ],
        );
      case 10:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/60.png'),
            ExtendedImage.asset('assets/images/61.png'),
            ExtendedImage.asset('assets/images/62.png'),
          ],
        );
      case 11:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/63.png'),
            ExtendedImage.asset('assets/images/64.png'),
            ExtendedImage.asset('assets/images/65.png'),
            ExtendedImage.asset('assets/images/66.png'),
          ],
        );
      case 12:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/67.png'),
            ExtendedImage.asset('assets/images/68.png'),
            ExtendedImage.asset('assets/images/69.png'),
          ],
        );
      case 13:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/70.png'),
            ExtendedImage.asset('assets/images/71.png'),
            ExtendedImage.asset('assets/images/72.png'),
          ],
        );
      case 14:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/73.png'),
            ExtendedImage.asset('assets/images/74.png'),
          ],
        );
      case 15:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/75.png'),
            ExtendedImage.asset('assets/images/76.png'),
            ExtendedImage.asset('assets/images/77.png'),
          ],
        );
      case 16:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/78.png'),
            ExtendedImage.asset('assets/images/79.png'),
            ExtendedImage.asset('assets/images/80.png'),
          ],
        );
      case 17:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/81.png'),
            ExtendedImage.asset('assets/images/82.png'),
            ExtendedImage.asset('assets/images/83.png'),
          ],
        );
      case 18:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/84.png'),
            ExtendedImage.asset('assets/images/85.png'),
            ExtendedImage.asset('assets/images/86.png'),
          ],
        );
      case 19:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/87.png'),
            ExtendedImage.asset('assets/images/88.png'),
            ExtendedImage.asset('assets/images/89.png'),
          ],
        );
      case 20:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/90.png'),
            ExtendedImage.asset('assets/images/91.png'),
            ExtendedImage.asset('assets/images/92.png'),
          ],
        );
      case 21:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/93.png'),
            ExtendedImage.asset('assets/images/94.png'),
            ExtendedImage.asset('assets/images/95.png'),
          ],
        );
      case 22:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/96.png'),
            ExtendedImage.asset('assets/images/97.png'),
            ExtendedImage.asset('assets/images/98.png'),
          ],
        );
    }
  } else if (indexNum == 1) {
    switch (tempIndex) {
      case 0:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/100.png'),
            ExtendedImage.asset('assets/images/101.png'),
            ExtendedImage.asset('assets/images/102.png'),
          ],
        );
      case 1:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/103.png'),
            ExtendedImage.asset('assets/images/104.png'),
            ExtendedImage.asset('assets/images/105.png'),
          ],
        );
      case 2:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/106.png'),
            ExtendedImage.asset('assets/images/107.png'),
          ],
        );
      case 3:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/108.png'),
            ExtendedImage.asset('assets/images/109.png'),
            ExtendedImage.asset('assets/images/110.png'),
            ExtendedImage.asset('assets/images/111.png'),
          ],
        );
      case 4:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/112.png'),
            ExtendedImage.asset('assets/images/113.png'),
            ExtendedImage.asset('assets/images/114.png'),
          ],
        );
      case 5:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/115.png'),
            ExtendedImage.asset('assets/images/116.png'),
            ExtendedImage.asset('assets/images/117.png'),
            ExtendedImage.asset('assets/images/118.png'),
            ExtendedImage.asset('assets/images/119.png'),
          ],
        );
    }
  } else if (indexNum == 2) {
    switch (tempIndex) {
      case 0:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/122.png'),
            ExtendedImage.asset('assets/images/123.png'),
            ExtendedImage.asset('assets/images/124.png'),
            ExtendedImage.asset('assets/images/125.png'),
          ],
        );
      case 1:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/126.png'),
            ExtendedImage.asset('assets/images/127.png'),
            ExtendedImage.asset('assets/images/128.png'),
          ],
        );
      case 2:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/132.png'),
            ExtendedImage.asset('assets/images/133.png'),
            ExtendedImage.asset('assets/images/134.png'),
            ExtendedImage.asset('assets/images/135.png'),
          ],
        );
      case 3:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/136.png'),
            ExtendedImage.asset('assets/images/137.png'),
            ExtendedImage.asset('assets/images/138.png'),
            ExtendedImage.asset('assets/images/139.png'),
          ],
        );
      case 4:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/140.png'),
            ExtendedImage.asset('assets/images/141.png'),
            ExtendedImage.asset('assets/images/142.png'),
            ExtendedImage.asset('assets/images/143.png'),
          ],
        );
      case 5:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/144.png'),
            ExtendedImage.asset('assets/images/145.png'),
            ExtendedImage.asset('assets/images/146.png'),
            ExtendedImage.asset('assets/images/147.png'),
          ],
        );
    }
  } else if (indexNum == 3) {
    switch (tempIndex) {
      case 0:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/150.png'),
            ExtendedImage.asset('assets/images/151.png'),
            ExtendedImage.asset('assets/images/152.png'),
            ExtendedImage.asset('assets/images/153.png'),
          ],
        );
      case 1:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/154.png'),
            ExtendedImage.asset('assets/images/155.png'),
            ExtendedImage.asset('assets/images/156.png'),
            ExtendedImage.asset('assets/images/157.png'),
          ],
        );
      case 2:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/158.png'),
            ExtendedImage.asset('assets/images/159.png'),
            ExtendedImage.asset('assets/images/160.png'),
          ],
        );
      case 3:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/161.png'),
            ExtendedImage.asset('assets/images/162.png'),
            ExtendedImage.asset('assets/images/163.png'),
          ],
        );
      case 4:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/164.png'),
            ExtendedImage.asset('assets/images/165.png'),
            ExtendedImage.asset('assets/images/166.png'),
            ExtendedImage.asset('assets/images/167.png'),
          ],
        );
      case 5:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/168.png'),
            ExtendedImage.asset('assets/images/169.png'),
            ExtendedImage.asset('assets/images/170.png'),
          ],
        );
      case 6:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/171.png'),
            ExtendedImage.asset('assets/images/172.png'),
          ],
        );
    }
  } else if (indexNum == 4) {
    switch (tempIndex) {
      case 0:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/174.png'),
            ExtendedImage.asset('assets/images/175.png'),
            ExtendedImage.asset('assets/images/176.png'),
            ExtendedImage.asset('assets/images/177.png'),
          ],
        );
      case 1:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/178.png'),
            ExtendedImage.asset('assets/images/179.png'),
            ExtendedImage.asset('assets/images/180.png'),
            ExtendedImage.asset('assets/images/181.png'),
          ],
        );
      case 2:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/182.png'),
            ExtendedImage.asset('assets/images/183.png'),
            ExtendedImage.asset('assets/images/184.png'),
          ],
        );
      case 3:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/185.png'),
            ExtendedImage.asset('assets/images/186.png'),
            ExtendedImage.asset('assets/images/187.png'),
            ExtendedImage.asset('assets/images/188.png'),
          ],
        );
    }
  } else if (indexNum == 5) {
    switch (tempIndex) {
      case 0:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/190.png'),
            ExtendedImage.asset('assets/images/191.png'),
            ExtendedImage.asset('assets/images/192.png'),
          ],
        );
      case 1:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/193.png'),
            ExtendedImage.asset('assets/images/194.png'),
          ],
        );
      case 2:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/195.png'),
            ExtendedImage.asset('assets/images/196.png'),
            ExtendedImage.asset('assets/images/197.png'),
            ExtendedImage.asset('assets/images/198.png'),
            ExtendedImage.asset('assets/images/199.png'),
          ],
        );
      case 3:
        return Row(
          children: [
            ExtendedImage.asset('assets/images/200.png'),
            ExtendedImage.asset('assets/images/201.png'),
          ],
        );
    }
  }
  return Row();
}

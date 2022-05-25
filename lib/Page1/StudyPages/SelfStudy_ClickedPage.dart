// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homebusinesshelper/Page1/StudyPages/SelfStudy_ListPage.dart';
import 'package:homebusinesshelper/Page1/selfstudyPage.dart';
import 'package:extended_image/extended_image.dart';
import 'package:styled_text/styled_text.dart';

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
      body: CustomContainer_SelfStudy(indexNum, tempIndex),
    );
  }
}

List<String> Product_Info(int indexNum) {
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
  } else if (indexNum == 5) {
    return Colors.lightBlue[400];
  } else {
    return Colors.deepPurple[400];
  }
}

StyledText Custom_StyledText(
    String text, TextAlign textAlign, double fontSize) {
  return StyledText(
    text: text,
    textAlign: textAlign,
    style: TextStyle(
        fontSize: fontSize.sp, color: Colors.black, fontFamily: 'customfont'),
    tags: {
      'b': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.bold)),
      'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
      'cb': StyledTextTag(style: TextStyle(color: Colors.blue[700])),
      'head': StyledTextTag(style: const TextStyle(fontSize: 20)),
    },
  );
}

ListView CustomContainer_SelfStudy(int indexNum, int tempIndex) {
  if (indexNum == 0) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.vertical, children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            color: Colors.blueGrey[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Custom_StyledText(
                    '입떼기 기술(오프닝 문구)과 비유, 예시를 활용한 화법', TextAlign.center, 20),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Custom_StyledText(
                    '<cb><b><head>입떼기 (오프닝)</head></b></cb>\n<b>초반에 고객을 잡아라 - 점화효과</b>\n초반에 정보 해석이 머릿속에 들어오면 다음 이야기를 들을 것인가 말 것인가 판단을 한다.\n<cr>그러니까 서두에 잡는게 중요하다.</cr>',
                    TextAlign.left,
                    15),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Custom_StyledText(
                    '<head><b><cb>마케팅의 서열 효과 위치</cb></b></head>\n고객들은 초반과 클로징(마무리)만 인상 깊게 기억을 한다.\n   <cr><b>☞  따라서 오프닝에 선점을 하자</b></cr>\n(고객님 사람이 살아가는데 있어 가장 중요한게 뭐라고 생각하십니까?)\n   <b>☞ 거의 대부분의 사람은 돈, 건강</b>\n<cr><b>근데 암에 걸리면 이 돈과 건강 한순간에 잃을 수 있다.</b></cr>',
                    TextAlign.left,
                    15),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Custom_StyledText(
                    '<head><b><cb>입떼기 기술 - 비유와 예시</cb></b></head>\n예시를 통해 쉬운 것으로 어려운 것을 설명할 수 있고 이는 고객 회상 가능성이 높아져 효과적\n<cr><b>예시를 잘 활용하자!!</b></cr>',
                    TextAlign.left,
                    15),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Custom_StyledText(
                    '<head><b>예시 화법 1 / 옷에 묻은 오물에 비유하기</b></head>\n\n고객님, 하얀 와이셔츠에 작은 김치 국물, 볼펜 자국 묻었다고 생각해보세요. 무시 하시겠어요? 아니죠. 옷에 자국 있는 것 확인하는 순간 씻어내시겠죠?\n\n 눈에 보이는건 무섭지 않아요. 당장 대처하면 되니까~ 그런데 <b>암세포가 그 작은 김치 국물, 음식물, 볼펜 자국처럼 몸 안에 묻어 있다면? 눈에 보이나요? 아니죠. 그러니까 모르는 겁니다.\n\n근데 걔들이 없어지나요? 아니죠. 물감 번지 듯 번져 나가서 온몸을 암세포로 덮을 때까지 결코 죽지 않습니다.근데 자각증상도 없이 몸 안에 자라나는 암을 느끼지도 못하고 일상생활을 보내겠죠.</b>\n\n김치국물을 지우는 덴 돈 별로 안 들어요. <b>근데 암은 지우는데 돈 많이 들잖아요. 하지만 다행히도 좋은건 선택권이 있다는 거죠.\n\n이런 방법 저런 방법 이런 여러 의료기술이 있죠. 근데 그 선택권에 따라 비용의 차이가 납니다. 그 비용의 차이에 따라 미래의 삶의 질이 달라집니다.</b> 그래서 제가 지금 말씀을 드리고 있는 겁니다.\n\n',
                    TextAlign.start,
                    15),
                Custom_StyledText(
                    '<head><b>예시 화법 2 / 돌멩이 비유하기</b></head>\n\n어린시절을 떠올려 보세요. 길에 가다 작은 돌에 걸려 넘어진 적 있으시죠? 그 돌이 커다란 바윗돌인가요? 아니잖아요~ 몇 년 전에 제가 캐나다에 휴가를 갔었는데 화이트 락이라는게 있더라구요. 그 돌을 보려고 한시간을 운전해 가서 봤는데 굉~장히 컸어요. 근데 그런 돌에 걸려 넘어지는 사람이 있나요? 없잖아요.',
                    TextAlign.start,
                    15),
              ],
            ),
          ),
        ]);

      case 1:
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Custom_StyledText('설득화법 - 통계 활용멘트', TextAlign.center, 20),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  Custom_StyledText(
                      '<cr><b>1. 당신은 암에 걸릴지 모른다(X) ☞ 당신은 암에 걸린다(O)</b></cr>\n\n 고객에게 이성적 확신을 줘야 계약이 이뤄질 수 있다. 이런 이성적 확신을 주기 위해 통계 자료를 활용하자.',
                      TextAlign.left,
                      15),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  Custom_StyledText(
                      '<cr><b>2. 인구통계 활용하기</b></cr>\n\n 1) 고객님, 전라북도 전체 인구수가 많을까요? 암환자수가 많을까요? 답은 암환자가 더 많아요. 전라북도 총 인구수가 178만 인데 암환자는 무려 200만명 이거든요? 이렇게 암환자가 많아지고 있으니까 고객님도 암에 대해서 더 준비하셔야죠.\n\n 2) 고객님, 우리나라에서 가장 인구가 많은 서울에서도 인구밀도 가 높은 강남 4개구 인구수가 암환자수하고 똑같은거 아세요? 200만명이거든요. 그러니까 고객님, 강남에서 길 갈때 보는 사람이 싹~ 다 암환자 라는 거예요.',
                      TextAlign.left,
                      15),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  Custom_StyledText(
                      '<cr><b>3. 주변상황을 활용하기</b></cr>\n\n 고객님, 지금 좌, 우 한번씩 보시겠어요? 사람들 보이시죠? 왼쪽에 한분, 오른쪽에 한분, 그리고 고객님 한분 이렇게 3명 있으면 그 3명중에 한명은 암환자 예요. 고객님 이렇게 암환자가 많은데 운만 믿고 미래를 맡길 수는 없잖아요? 그러니 준비하셔야죠.',
                      TextAlign.left,
                      15),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  Custom_StyledText(
                      '<cr><b>4. 독감을 이용한 멘트</b></cr>\n\n 고객님, 매년 독감 예방주사 접종들 하시잖아요? 독감은 기침 한번에 3만개의 비말이 퍼지고 재채기를 하면 비말이 9미터 까지 날아가구요. 이런 비말이 최자아 8시간 공중에 떠다니고 48시간 바이러스가 생존해서 간접 전염도 되는데요. 근데 통계청 조사결과 이런 독감보다 암발생 확률이 2배가 더 높다고 해요. 또 독감은 코로나 이후로 마스크를 쓰다보니 독감 환자수가 현격하게 줄어들었는데 암환자는 여전히 계속 증가하고 있거든요? 그러니까 암은 조심한다고 해서 피해갈 수 있는 질병이 아니에요. 거기다 독감은 자연치유가 되지만 암은 거의 불가능 하잖아요? 그러니 고객님 암은 이제 감기나 독감처럼 일상생활 질병으로 생각하고 준비하셔야 되는 시대인거예요.',
                      TextAlign.start,
                      15),
                  Padding(padding: EdgeInsets.only(top: 20.h)),
                  Custom_StyledText(
                      '<cr><b>5. 편의점 활용하기</b></cr>\n\n 고객님, 오늘 하루 편의점 몇 개 보셨어요? 근데 그거 아세요? 고객님께서 보신 편의점수에 40을 곱하면 그게 바로 오늘 고객님이 본 암환자 수예요. 전국에 편의점수가 5만개인데 암환자수는 그 40배인 200만명이거든요. 고객님 하루 동안 여기저기 다니다보면 편의점을 안볼수가 없잖아요? 이젠 암환자도 마찬가집니다. 살아가다보면 내 주위에서 암환자를 안 볼래야 안 볼수가 없거든요. 그러니 준비 잘 해두셔야죠.',
                      TextAlign.start,
                      15),
                ],
              ),
            ),
          ], //
        );
    }
  } else if (indexNum == 1) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/12.png'),
              ExtendedImage.asset('assets/images/13.png'),
              ExtendedImage.asset('assets/images/14.png'),
              ExtendedImage.asset('assets/images/15.png'),
              ExtendedImage.asset('assets/images/16.png'),
            ],
          ),
        ]);
      case 1:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/17.png'),
              ExtendedImage.asset('assets/images/18.png'),
              ExtendedImage.asset('assets/images/19.png'),
              ExtendedImage.asset('assets/images/20.png'),
            ],
          ),
        ]);
      case 2:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
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
          ),
        ]);
      case 3:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/31.png'),
              ExtendedImage.asset('assets/images/32.png'),
              ExtendedImage.asset('assets/images/33.png'),
              ExtendedImage.asset('assets/images/34.png'),
            ],
          ),
        ]);
      case 4:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/35.png'),
              ExtendedImage.asset('assets/images/36.png'),
              ExtendedImage.asset('assets/images/37.png'),
              ExtendedImage.asset('assets/images/38.png'),
            ],
          ),
        ]);
      case 5:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/39.png'),
              ExtendedImage.asset('assets/images/40.png'),
              ExtendedImage.asset('assets/images/41.png'),
              ExtendedImage.asset('assets/images/42.png'),
            ],
          ),
        ]);
      case 6:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/43.png'),
              ExtendedImage.asset('assets/images/44.png'),
              ExtendedImage.asset('assets/images/45.png'),
              ExtendedImage.asset('assets/images/46.png'),
            ],
          ),
        ]);
      case 7:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/47.png'),
              ExtendedImage.asset('assets/images/48.png'),
              ExtendedImage.asset('assets/images/49.png'),
              ExtendedImage.asset('assets/images/50.png'),
            ],
          ),
        ]);
      case 8:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/51.png'),
              ExtendedImage.asset('assets/images/52.png'),
              ExtendedImage.asset('assets/images/53.png'),
              ExtendedImage.asset('assets/images/54.png'),
            ],
          ),
        ]);
      case 9:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/55.png'),
              ExtendedImage.asset('assets/images/56.png'),
              ExtendedImage.asset('assets/images/57.png'),
              ExtendedImage.asset('assets/images/58.png'),
              ExtendedImage.asset('assets/images/59.png'),
            ],
          ),
        ]);
      case 10:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/60.png'),
              ExtendedImage.asset('assets/images/61.png'),
              ExtendedImage.asset('assets/images/62.png'),
            ],
          ),
        ]);
      case 11:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/63.png'),
              ExtendedImage.asset('assets/images/64.png'),
              ExtendedImage.asset('assets/images/65.png'),
              ExtendedImage.asset('assets/images/66.png'),
            ],
          ),
        ]);
      case 12:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/67.png'),
              ExtendedImage.asset('assets/images/68.png'),
              ExtendedImage.asset('assets/images/69.png'),
            ],
          ),
        ]);
      case 13:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/70.png'),
              ExtendedImage.asset('assets/images/71.png'),
              ExtendedImage.asset('assets/images/72.png'),
            ],
          ),
        ]);
      case 14:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/73.png'),
              ExtendedImage.asset('assets/images/74.png'),
            ],
          ),
        ]);
      case 15:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/75.png'),
              ExtendedImage.asset('assets/images/76.png'),
              ExtendedImage.asset('assets/images/77.png'),
            ],
          ),
        ]);
      case 16:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/78.png'),
              ExtendedImage.asset('assets/images/79.png'),
              ExtendedImage.asset('assets/images/80.png'),
            ],
          ),
        ]);
      case 17:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/81.png'),
              ExtendedImage.asset('assets/images/82.png'),
              ExtendedImage.asset('assets/images/83.png'),
            ],
          ),
        ]);
      case 18:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/84.png'),
              ExtendedImage.asset('assets/images/85.png'),
              ExtendedImage.asset('assets/images/86.png'),
            ],
          ),
        ]);
      case 19:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/87.png'),
              ExtendedImage.asset('assets/images/88.png'),
              ExtendedImage.asset('assets/images/89.png'),
            ],
          ),
        ]);
      case 20:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/90.png'),
              ExtendedImage.asset('assets/images/91.png'),
              ExtendedImage.asset('assets/images/92.png'),
            ],
          ),
        ]);
      case 21:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/93.png'),
              ExtendedImage.asset('assets/images/94.png'),
              ExtendedImage.asset('assets/images/95.png'),
            ],
          ),
        ]);
      case 22:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/96.png'),
              ExtendedImage.asset('assets/images/97.png'),
              ExtendedImage.asset('assets/images/98.png'),
            ],
          ),
        ]);
    }
  } else if (indexNum == 2) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/100.png'),
              ExtendedImage.asset('assets/images/101.png'),
              ExtendedImage.asset('assets/images/102.png'),
            ],
          ),
        ]);
      case 1:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/103.png'),
              ExtendedImage.asset('assets/images/104.png'),
              ExtendedImage.asset('assets/images/105.png'),
            ],
          ),
        ]);
      case 2:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/106.png'),
              ExtendedImage.asset('assets/images/107.png'),
            ],
          ),
        ]);
      case 3:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/108.png'),
              ExtendedImage.asset('assets/images/109.png'),
              ExtendedImage.asset('assets/images/110.png'),
              ExtendedImage.asset('assets/images/111.png'),
            ],
          ),
        ]);
      case 4:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/112.png'),
              ExtendedImage.asset('assets/images/113.png'),
              ExtendedImage.asset('assets/images/114.png'),
            ],
          ),
        ]);
      case 5:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/115.png'),
              ExtendedImage.asset('assets/images/116.png'),
              ExtendedImage.asset('assets/images/117.png'),
              ExtendedImage.asset('assets/images/118.png'),
              ExtendedImage.asset('assets/images/119.png'),
            ],
          ),
        ]);
    }
  } else if (indexNum == 3) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/122.png'),
              ExtendedImage.asset('assets/images/123.png'),
              ExtendedImage.asset('assets/images/124.png'),
              ExtendedImage.asset('assets/images/125.png'),
            ],
          ),
        ]);
      case 1:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/126.png'),
              ExtendedImage.asset('assets/images/127.png'),
              ExtendedImage.asset('assets/images/128.png'),
            ],
          ),
        ]);
      case 2:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/132.png'),
              ExtendedImage.asset('assets/images/133.png'),
              ExtendedImage.asset('assets/images/134.png'),
              ExtendedImage.asset('assets/images/135.png'),
            ],
          ),
        ]);
      case 3:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/136.png'),
              ExtendedImage.asset('assets/images/137.png'),
              ExtendedImage.asset('assets/images/138.png'),
              ExtendedImage.asset('assets/images/139.png'),
            ],
          ),
        ]);
      case 4:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/140.png'),
              ExtendedImage.asset('assets/images/141.png'),
              ExtendedImage.asset('assets/images/142.png'),
              ExtendedImage.asset('assets/images/143.png'),
            ],
          ),
        ]);
      case 5:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/144.png'),
              ExtendedImage.asset('assets/images/145.png'),
              ExtendedImage.asset('assets/images/146.png'),
              ExtendedImage.asset('assets/images/147.png'),
            ],
          ),
        ]);
    }
  } else if (indexNum == 4) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/150.png'),
              ExtendedImage.asset('assets/images/151.png'),
              ExtendedImage.asset('assets/images/152.png'),
              ExtendedImage.asset('assets/images/153.png'),
            ],
          ),
        ]);
      case 1:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/154.png'),
              ExtendedImage.asset('assets/images/155.png'),
              ExtendedImage.asset('assets/images/156.png'),
              ExtendedImage.asset('assets/images/157.png'),
            ],
          ),
        ]);
      case 2:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/158.png'),
              ExtendedImage.asset('assets/images/159.png'),
              ExtendedImage.asset('assets/images/160.png'),
            ],
          ),
        ]);
      case 3:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/161.png'),
              ExtendedImage.asset('assets/images/162.png'),
              ExtendedImage.asset('assets/images/163.png'),
            ],
          ),
        ]);
      case 4:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/164.png'),
              ExtendedImage.asset('assets/images/165.png'),
              ExtendedImage.asset('assets/images/166.png'),
              ExtendedImage.asset('assets/images/167.png'),
            ],
          ),
        ]);
      case 5:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/168.png'),
              ExtendedImage.asset('assets/images/169.png'),
              ExtendedImage.asset('assets/images/170.png'),
            ],
          ),
        ]);
      case 6:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/171.png'),
              ExtendedImage.asset('assets/images/172.png'),
            ],
          ),
        ]);
    }
  } else if (indexNum == 5) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/174.png'),
              ExtendedImage.asset('assets/images/175.png'),
              ExtendedImage.asset('assets/images/176.png'),
              ExtendedImage.asset('assets/images/177.png'),
            ],
          ),
        ]);
      case 1:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/178.png'),
              ExtendedImage.asset('assets/images/179.png'),
              ExtendedImage.asset('assets/images/180.png'),
              ExtendedImage.asset('assets/images/181.png'),
            ],
          ),
        ]);
      case 2:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/182.png'),
              ExtendedImage.asset('assets/images/183.png'),
              ExtendedImage.asset('assets/images/184.png'),
            ],
          ),
        ]);
      case 3:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/185.png'),
              ExtendedImage.asset('assets/images/186.png'),
              ExtendedImage.asset('assets/images/187.png'),
              ExtendedImage.asset('assets/images/188.png'),
            ],
          ),
        ]);
    }
  } else if (indexNum == 6) {
    switch (tempIndex) {
      case 0:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/190.png'),
              ExtendedImage.asset('assets/images/191.png'),
              ExtendedImage.asset('assets/images/192.png'),
            ],
          ),
        ]);
      case 1:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/193.png'),
              ExtendedImage.asset('assets/images/194.png'),
            ],
          ),
        ]);
      case 2:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/195.png'),
              ExtendedImage.asset('assets/images/196.png'),
              ExtendedImage.asset('assets/images/197.png'),
              ExtendedImage.asset('assets/images/198.png'),
              ExtendedImage.asset('assets/images/199.png'),
            ],
          ),
        ]);
      case 3:
        return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            children: [
              ExtendedImage.asset('assets/images/200.png'),
              ExtendedImage.asset('assets/images/201.png'),
            ],
          ),
        ]);
    }
  }
  return ListView(scrollDirection: Axis.horizontal, children: [
    Row(
      children: const [],
    ),
  ]);
}

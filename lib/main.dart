// ignore_for_file: must_be_immutable, non_constant_identifier_names, avoid_print, unused_field, prefer_const_declarations, empty_catches, no_leading_underscores_for_local_identifiers
import 'dart:math';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_admob_app_open/flutter_admob_app_open.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:homebusinesshelper/Page0/scriptPages/chunchul_Script.dart';
import 'package:homebusinesshelper/Page0/scriptPages/chunchuldefence_Script.dart';
import 'package:styled_text/styled_text.dart';
import 'Page0/scriptPages/easyrecord_Script.dart';
import 'Page0/scriptPages/sangsulagree_Script.dart';
import 'Page0/scriptPages/tukyakdel_Script.dart';
import 'Page0/scriptPages/budambo_Script.dart';
import 'Page0/variousformsPage.dart';
import 'Page1/StudyPages/SelfStudy_ClickedPage.dart';
import 'Page1/StudyPages/SelfStudy_ListPage.dart';
import 'Page1/selfstudyPage.dart';
import 'Page2/scriptforproduct.dart';
import 'Page2/scripts/scripts.dart';
import 'Page3/d_list.dart';
import 'Page3/init_d_list.dart';
import 'Page3/viewtile.dart';
import 'admin.dart';
import 'auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

FlutterSecureStorage storage = const FlutterSecureStorage();
List<Map<String, dynamic>> json = dList;
DiseaseList list = DiseaseList.fromJson(json);
double appbarheight = 80.w;
bool isAuth = false;
String? unum;
String? uname;
const String testDevice = 'ef68e5f7-9367-4889-9ab8-d983abfd34b4';
String? version = '1.0.0';
String? img;

/// Replace your admob app open ad unit id
final appAppOpenAdUnitId = 'ca-app-pub-1857986583198272/6936827294';
// Platform.isAndroid
// ? FlutterAdmobAppOpen.testAppOpenAdId //Test ad ID
// : 'ca-app-pub-1857986583198272/6936827294'; //My ad ID

AdRequestAppOpen targetingInfo = const AdRequestAppOpen(
  keywords: <String>['재택', '금융', '육아', '영업'],
  nonPersonalizedAds: true,
);

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  await FirebaseAuth.instance.signInAnonymously();
  await MobileAds.instance.initialize().then((value) {
    MobileAds.instance.updateRequestConfiguration(
      //Add more configs
      RequestConfiguration(testDeviceIds: [testDevice]),
    );
  });
  await AutoLogin()
      .then((value) => CheckScriptUpdate())
      .then((value) => FlutterNativeSplash.remove());

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      // minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AIA간편심사 병력확인',
        home: isAuth ? const MainPage() : const GetAuth(),
        routes: {
          '/budambo': (context) => const BudamboScript(),
          '/easyrecord': (context) => const EasyrecordScript(),
          '/sangsulagree': (context) => const SangsulAgreeScript(),
          '/tukyakdel': (context) => const TukyakDelScript(),
          '/chungchul': (context) => const ChungchulScript(),
          '/chunchuldef': (context) => const ChungchulDefenceScript(),
          '/admincheck': (context) => const AdminCheck(),
          '/admin': (context) => const AdminPage(),
          '/1': (context) => const SelfStudy_ClickedPage(),
          '/0': (context) => const SelfStudy_List()
        },
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int tabIndex = 2;
  late TabController tabController =
      TabController(length: 4, vsync: this, initialIndex: tabIndex);
  DateTime prebackpress = DateTime.now();

  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    adsAfterSplash();
  }

  void adsAfterSplash() async {
    await FlutterAdmobAppOpen.instance.initialize(
        appAppOpenAdUnitId: appAppOpenAdUnitId, targetingInfo: targetingInfo);
    await _loadAd();
  }

  Future<void> _loadAd() async {
    // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      return;
    }

    _anchoredAdaptiveAd = BannerAd(
      adUnitId: 'ca-app-pub-1857986583198272/2050907098',
      // Platform.isAndroid
      //     ? 'ca-app-pub-3940256099942544/6300978111' //Test ad ID
      //     : 'ca-app-pub-1857986583198272/2050907098', // My ad ID
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          setState(() {
            _anchoredAdaptiveAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        },
      ),
    );
    return _anchoredAdaptiveAd?.load();
  }

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      showDialog(
          context: context,
          builder: (context) => StatefulBuilder(builder: (context, setState) {
                return AlertDialog(
                  contentPadding: const EdgeInsets.all(20),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  content: DailyRandomComments(),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: CustomStyledText("<cb>확인</cb>", 20))
                  ],
                );
              }));
    });
    super.initState();
  }

  Widget DailyRandomComments() {
    int rand = Random().nextInt(26);
    int rand2 = Random().nextInt(3);
    if (rand2 == 0) {
      img = 'assets/images/happyClova.png';
    } else if (rand2 == 1) {
      img = 'assets/images/flower.png';
    } else if (rand2 == 2) {
      img = 'assets/images/luckyday.png';
    }
    switch (rand) {
      case 0:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n자신의 행동에 대해 너무 소심하고 까다롭게 고민하지 말라.\n모든 인생은 실험이다.\n더 많이 실험할수록 더 나아진다\n\n-랄프 왈도 에머슨',
                17),
          ],
        );
      case 1:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n명성을 쌓는데는 20년이라는 세월이 걸리며\n명성을 망가뜨리는데는 채 5분도 걸리지 않는다.\n그것을 명심한다면 당신의 행동이 달라질 것이다.\n\n-워런 버핏',
                17),
          ],
        );
      case 2:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n성공은 영원하지 않고\n실패는 치명적이지 않다\n\n-마이크 디트카', 17),
          ],
        );
      case 3:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n멈추지 말고 한 가지 목표를 향해 달려가라\n그것이 성공의 비결이다\n\n-안나 파블로바', 17),
          ],
        );
      case 4:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n당신의 행복은 무엇이 당신의 영혼을 노래하게 하는가에 의해 결정된다.\n\n-낸시 설리번', 17),
          ],
        );
      case 5:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n사람이 인생에서 가장 후회하는 어리석은 행동은\n기회가 있을 때 저지르지 않은 행동이다.\n\n-헬렌 롤랜드',
                17),
          ],
        );
      case 6:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n용기가 나지 않을 때, 할 수 있는 가장 용기 있는 행동은\n용기를 천명하고 그대로 행동하는 것이다\n\n-코라 헤리스',
                17),
          ],
        );
      case 7:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n오랫동안 꿈을 그려온 사람은 마침내 그 꿈을 닮아 간다\n\n-앙드레 말로', 17),
          ],
        );
      case 8:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n신중히 생각할 시간을 가져라\n그러나 행동할 때가 오면 생각을 멈추고 뛰어들어라\n\n-나폴레옹 보나파르트',
                17),
          ],
        );
      case 9:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n경험은 인간에게 우연히 일어나는 일이 아니라\n일어나는 일에 대해 인간이 하는 행동이다\n\n-올더스 헉슬리',
                17),
          ],
        );
      case 10:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n경험은 실수를 거듭해야만 서서히 알게 된다\n\n-J.A 푸르드', 17),
          ],
        );
      case 11:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n최고가 되기 위해 가진 모든 것을 활용하세요\n바로 이 것이 현재 제가 사는 방식입니다\n\n-오프라 윈프리',
                17),
          ],
        );
      case 12:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n신은 우리에게 성공할 것을 요구하지 않는다\n단지 우리가 노력할 것을 요구할 뿐이다\n\n-마더 테레사',
                17),
          ],
        );
      case 13:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n행복이란 성취의 기쁨과 창조적 노력이 주는 쾌감 속에 있다\n\n-프랭클린D.루즈벨트', 17),
          ],
        );
      case 14:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n고통 뒤의 즐거움은 달콤하다\n\n-존 드라이든', 17),
          ],
        );
      case 15:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n실패는 하나의 교훈이며 상황을 호전시킬 수 있는 첫걸음이다\n\n-필립스', 17),
          ],
        );
      case 16:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n승리하면 조금은 배울 수 있고\n패배하면 모든것을 알게된다\n\n-크리스티 매튜스', 17),
          ],
        );
      case 17:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n당신이 할 수 있다고 생각하면 할 수 있고\n할 수 없다고 생각하면 할 수 없다\n\n-헨리 포드',
                17),
          ],
        );
      case 18:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n지식만으로는 사람으로 성장할 수 없다\n사람은 마음이 성장해야 한다\n\n-조셉 파커', 17),
          ],
        );
      case 19:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n오늘을 잡아라\n오늘에 감사해라\n사랑하고 일하고 뛰어놀고 하늘의 별을 올려다 볼 기회가 주어졌음에\n\n-헨리 반다이크',
                17),
          ],
        );
      case 20:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n웃음 없는 하루는 낭비한 하루다\n\n-찰리 채플린', 17),
          ],
        );
      case 21:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n만족은 결과가 아니라 과정에서 온다\n\n-제임스 딘', 17),
          ],
        );
      case 22:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n자신의 능력을 믿어야 한다.\n그리고 끝까지 굳세게 밀고 나가라\n\n-로잘린 카터', 17),
          ],
        );
      case 23:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n웃음 없는 하루는 낭비한 하루다\n\n-찰리 채플린', 17),
          ],
        );
      case 24:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText(
                '\n\n일이 즐거우면 인생은 낙원이다\n일이 의무에 불과하면 인생은 지옥이다\n\n-막심 고리키', 17),
          ],
        );
      case 25:
        return Column(
          children: [
            SizedBox(height: 300, child: ExtendedImage.asset(img.toString())),
            CustomStyledText('\n\n시작이 반이다\n\n-아리스토 텔레스', 17),
          ],
        );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(prebackpress);
        final cantExit = timegap >= const Duration(seconds: 2);
        prebackpress = DateTime.now();
        if (cantExit) {
          //show snackbar
          final snack = SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              "'뒤로가기' 를 한번 더 누르면 종료합니다.",
              style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
            ),
            duration: const Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(35.h),
          child: AppBar(
              title: Text(
                'TM 의 달인',
                style: TextStyle(fontSize: 20.sp, fontFamily: 'customfont'),
              ),
              centerTitle: true,
              backgroundColor: Colors.redAccent),
        ),
        body: Column(
          children: [
            Container(
              height: 40.h,
              color: Colors.grey[200],
              child: TabBar(
                indicatorColor: Colors.redAccent,
                indicatorWeight: 2.5.w,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle:
                    TextStyle(fontSize: 13.sp, fontFamily: 'customfont'),
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: '각종양식'),
                  Tab(text: '셀프학습'),
                  Tab(
                    text: '스크립트',
                  ),
                  Tab(text: '간편U/W'),
                ],
                controller: tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  VariousFormsPage(),
                  SelfStudyPage(),
                  ScriptForProduct(),
                  Custom_viewtile(),
                ],
              ),
            ),
            CustomContainer(_anchoredAdaptiveAd)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _anchoredAdaptiveAd?.dispose();
  }
}

Future AutoLogin() async {
  unum = await storage.read(key: '저장된 사번');
  uname = await storage.read(key: '저장된 이름');

  try {
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    DocumentSnapshot data =
        await fireStore.collection('Center_userinfo').doc(unum).get();
    if (data['uname'] == uname) {
      isAuth = true;
    }
  } catch (e) {
    isAuth = false;
  }
}

Future CheckScriptUpdate() async {
  try {
    version = await storage.read(key: '버전');
    FirebaseFirestore fireStore = FirebaseFirestore.instance;
    DocumentSnapshot _data =
        await fireStore.collection('Center_scripts').doc('version').get();
    if (_data['_version'] == version) {
      print('같다');
      cancerDoip_1 = await storage.read(key: 'cancerDoip_1');
      cancerDescription_1_1 = await storage.read(key: 'cancerDescription_1_1');
      cancerDescription_1_2 = await storage.read(key: 'cancerDescription_1_2');
      cancerDescription_1_3 = await storage.read(key: 'cancerDescription_1_3');
      cancerClosing_1 = await storage.read(key: 'cancerClosing_1');

      dentalDoip_1 = await storage.read(key: 'dentalDoip_1');
      dentalDescription_1_1 = await storage.read(key: 'dentalDescription_1_1');
      dentalDescription_1_2 = await storage.read(key: 'dentalDescription_1_2');
      dentalDescription_1_3 = await storage.read(key: 'dentalDescription_1_3');
      dentalClosing_1 = await storage.read(key: 'dentalClosing_1');

      gungangDoip_1 = await storage.read(key: 'gungangDoip_1');
      gungangDescription_1_1 =
          await storage.read(key: 'gungangDescription_1_1');
      gungangDescription_1_2 =
          await storage.read(key: 'gungangDescription_1_2');
      gungangDescription_1_3 =
          await storage.read(key: 'gungangDescription_1_3');
      gungangClosing_1 = await storage.read(key: 'gungangClosing_1');
    } else if (_data['_version'] != version) {
      print('다르다');
      version = _data['_version'];
      storage.write(key: '버전', value: version);
      FirebaseFirestore _fireStore = FirebaseFirestore.instance;
      DocumentSnapshot data =
          await _fireStore.collection('Center_scripts').doc('Scripts').get();

      cancerDoip_1 = data['cancerDoip_1'].toString().replaceAll('\\n', '\n');
      cancerDescription_1_1 =
          data['cancerDescription_1_1'].toString().replaceAll('\\n', '\n');
      cancerDescription_1_2 =
          data['cancerDescription_1_2'].toString().replaceAll('\\n', '\n');
      cancerDescription_1_3 =
          data['cancerDescription_1_3'].toString().replaceAll('\\n', '\n');
      cancerClosing_1 =
          data['cancerClosing_1'].toString().replaceAll('\\n', '\n');
      await storage.write(key: 'cancerDoip_1', value: cancerDoip_1);
      await storage.write(
          key: 'cancerDescription_1_1', value: cancerDescription_1_1);
      await storage.write(
          key: 'cancerDescription_1_2', value: cancerDescription_1_2);
      await storage.write(
          key: 'cancerDescription_1_3', value: cancerDescription_1_3);
      await storage.write(key: 'cancerClosing_1', value: cancerClosing_1);
      dentalDoip_1 = data['dentalDoip_1'].toString().replaceAll('\\n', '\n');
      dentalDescription_1_1 =
          data['dentalDescription_1_1'].toString().replaceAll('\\n', '\n');
      dentalDescription_1_2 =
          data['dentalDescription_1_2'].toString().replaceAll('\\n', '\n');
      dentalDescription_1_3 =
          data['dentalDescription_1_3'].toString().replaceAll('\\n', '\n');
      dentalClosing_1 =
          data['dentalClosing_1'].toString().replaceAll('\\n', '\n');
      await storage.write(key: 'dentalDoip_1', value: dentalDoip_1);
      await storage.write(
          key: 'dentalDescription_1_1', value: dentalDescription_1_1);
      await storage.write(
          key: 'dentalDescription_1_2', value: dentalDescription_1_2);
      await storage.write(
          key: 'dentalDescription_1_3', value: dentalDescription_1_3);
      await storage.write(key: 'dentalClosing_1', value: dentalClosing_1);
      gungangDoip_1 = data['gungangDoip_1'].toString().replaceAll('\\n', '\n');
      gungangDescription_1_1 =
          data['gungangDescription_1_1'].toString().replaceAll('\\n', '\n');
      gungangDescription_1_2 =
          data['gungangDescription_1_2'].toString().replaceAll('\\n', '\n');
      gungangDescription_1_3 =
          data['gungangDescription_1_3'].toString().replaceAll('\\n', '\n');
      gungangClosing_1 =
          data['gungangClosing_1'].toString().replaceAll('\\n', '\n');
      await storage.write(key: 'gungangDoip_1', value: gungangDoip_1);
      await storage.write(
          key: 'gungangDescription_1_1', value: gungangDescription_1_1);
      await storage.write(
          key: 'gungangDescription_1_2', value: gungangDescription_1_2);
      await storage.write(
          key: 'gungangDescription_1_3', value: gungangDescription_1_3);
      await storage.write(key: 'gungangClosing_1', value: gungangClosing_1);
    }
  } catch (e) {}
}

Widget CustomText(String text, TextAlign textalign, int fontsize) {
  return StyledText(
    text: text,
    textAlign: textalign,
    style: TextStyle(
        fontSize: fontsize.sp, color: Colors.black, fontFamily: 'customfont'),
    tags: {
      'b': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.bold)),
      'cr': StyledTextTag(style: const TextStyle(color: Colors.red)),
      'cb': StyledTextTag(style: TextStyle(color: Colors.blue[700])),
    },
  );
}

Widget CustomContainer(BannerAd? _anchoredAdaptiveAd) {
  if (_anchoredAdaptiveAd?.size.height == null) {
    return Container(
      color: Colors.red,
    );
  } else {
    return SizedBox(
        width: _anchoredAdaptiveAd?.size.width.toDouble(),
        height: _anchoredAdaptiveAd?.size.height.toDouble(),
        child: AdWidget(ad: _anchoredAdaptiveAd!));
  }
}

// ignore_for_file: must_be_immutable, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
import 'Page1/selfstudyPage.dart';
import 'Page2/scriptforproduct.dart';
import 'Page3/d_list.dart';
import 'Page3/init_d_list.dart';
import 'Page3/viewtile.dart';
import 'admin.dart';
import 'auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

List<Map<String, dynamic>> json = dList;
DiseaseList list = DiseaseList.fromJson(json);
double appbarheight = 80.w;
bool isAuth = false;
String? unum;
String? uname;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAuth.instance.signInAnonymously();
  await AutoLogin();
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
                'AIA생명 재택영업 도우미',
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
                    TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: '각종양식'),
                  Tab(text: '셀프학습'),
                  Tab(
                    text: '스크립트',
                  ),
                  Tab(text: '간편 U/W'),
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
          ],
        ),
      ),
    );
  }
}

Future AutoLogin() async {
  const storage = FlutterSecureStorage();
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

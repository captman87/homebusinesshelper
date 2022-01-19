// ignore_for_file: must_be_immutable
//test
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Page1/cancerproductlist.dart';
import 'Page1/gungangproductlist.dart';
import 'Page1/productlistPage.dart';
import 'Page2/jobanddrivePage.dart';
import 'Page3/d_list.dart';
import 'Page3/init_d_list.dart';
import 'Page3/viewtile.dart';

List<Map<String, dynamic>> json = dList;
DiseaseList list = DiseaseList.fromJson(json);
List<String> titlelist = ['1. 상품별 특징', '2. 직업 & 운전별 U/W', '3. 간편심사 예외 병력 U/W'];
double appbarheight = 80.w;

void main() {
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
        initialRoute: '/',
        routes: {
          '/': (context) => const MainPage(),
          '/productlist': (context) => const ProductInfoList(),
          '/jobanddrive': (context) => const JobAndDrive(),
          '/cancer': (context) => const CancerProductList(),
          '/gungang': (context) => const GungangProductList(),
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
  int tabIndex = 1;
  late TabController tabController =
      TabController(length: 3, vsync: this, initialIndex: tabIndex);
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
        appBar: AppBar(
            title: Text(
              'AIA생명 재택영업 도우미',
              style: TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
            ),
            centerTitle: true,
            backgroundColor: Colors.redAccent),
        body: Column(
          children: [
            Container(
              height: 50.h,
              color: Colors.grey[200],
              child: TabBar(
                indicatorColor: Colors.redAccent,
                indicatorWeight: 2.5.w,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle:
                    TextStyle(fontSize: 15.sp, fontFamily: 'customfont'),
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: '간편 학습'),
                  Tab(text: '간편 설계'),
                  Tab(text: '간편 U/W'),
                ],
                controller: tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white),
                  const JobAndDrive(),
                  const Custom_viewtile(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

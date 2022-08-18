import 'package:ecg/Page/detailinfo/detailInfoPage.dart';
import 'package:ecg/Page/home_page.dart';
import 'package:ecg/Page/pastAnalysis/pastAnalysisPage.dart';
import 'package:ecg/commonComponents/headerBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Page/heartRateInfo/heartRateInfoPage.dart';
import 'Page/singleDayAnalysis/singleDayAnalysisPage.dart';

import 'Page/symptomCheck/symptomCheckPage.dart';
import 'config/palette.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Palette.mycolor,
        ),
        home: const BottomNavigationController());
  }
}

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  // int _currentIndex = 0;
  final pages = [
    const HeartRateInfoPage(),
    const SingleDayAnalysisPage(),
    const SymptomCheckPage(),
    const DetailInfoPage(),
    const PastAnalysisPage()
  ];

  Widget page = const HomePage();

  final _controller = PageController(initialPage: 0);
  static const _duration = Duration(milliseconds: 300);
  static const _curve = Curves.easeInOutCubic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: page,
      // TODO: Detect is login or register not to show
      bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                BottomNavigationBar(
                  selectedLabelStyle: const TextStyle(fontSize: 12),
                  unselectedLabelStyle: const TextStyle(fontSize: 12),
                  unselectedItemColor: Colors.white,
                  selectedItemColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  onTap: _onItemClick,
                  backgroundColor: const Color(0xFF709e94),
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.heartPulse,
                          color: Colors.white),
                      label: '每日',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.chartSimple,
                          color: Colors.white),
                      label: '頻率',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(FontAwesomeIcons.house,
                            color: Colors.transparent),
                        label: ""),
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.gear, color: Colors.white),
                      label: '設定',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.help, color: Colors.white),
                      label: '說明',
                    ),
                  ],
                ),
                Positioned(
                  top: -20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFe8998d),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      setState(() {
                        page = const HomePage();
                      });
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.house,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ])),
    );
  }

  void _onItemClick(int index) {
    if (index == 2) return;
    setState(() {
      page = pages[index];
    });
  }
}

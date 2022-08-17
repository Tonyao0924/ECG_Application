import 'package:ecg/Page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Page/heartRateInfo/heartRateInfoPage.dart';
import 'Page/singleDayAnalysis/singleDayAnalysisPage.dart';

import 'Page/symptomCheck/DDDDDDDemo/home.dart'; // for demo

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
      home: const Scaffold(
        body: Home(title: "title"), // for demo

      ),
    );
  }
}
class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key ?key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}
class _BottomNavigationControllerState extends State<BottomNavigationController> {
  int _currentIndex = 0;
  final pages = [const HomePage() ,const HeartRateInfoPage(),const SingleDayAnalysisPage()];
  final _controller = PageController(initialPage: 0);
  static const _duration = Duration(milliseconds: 300);
  static const _curve = Curves.easeInOutCubic;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Scaffold(appBar: AppBar(
            title: const Text(''),
          ),
            body: pages[_currentIndex],
            // TODO: Detect is login or register not to show
            bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: const TextStyle(fontSize: 12),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xFF709e94),
              onTap: _onItemClick,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.heartPulse,
                    color: Colors.white,
                  ),
                  label: '每日',
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.chartSimple, color: Colors.white),
                  label: '頻率',
                ),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house, color: Colors.transparent),
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

          )
        ]);
  }
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
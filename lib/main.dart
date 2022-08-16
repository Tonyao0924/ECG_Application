import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Page/home_page.dart';
import 'config/palette.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Palette.mycolor,
      ),
      home: Scaffold(
        body: BottomNavigationController(),

      ),
    );
  }
}
class BottomNavigationController extends StatefulWidget {
  BottomNavigationController({Key ?key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}
class _BottomNavigationControllerState extends State<BottomNavigationController> {
  //int _currentIndex = 0; //預設值
  final pages = [GroupWidget()];
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Scaffold(appBar: AppBar(
            title: Text(''),
          ),
          body:
            GroupWidget(),
          )
          ,BottomNavigationBar(
            selectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF709e94),
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
          Positioned(
            top: 700.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFe8998d),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () => null,
              child: const FaIcon(
                FontAwesomeIcons.house,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ]);
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DDDemoFooterNavigation extends StatelessWidget {
  const DDDemoFooterNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(

          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),

          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          backgroundColor: const Color(0xFF709e94),

          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.heartPulse), label: '每日'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.chartSimple), label: '頻率'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.chartSimple), label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.gear), label: '設定'),
            BottomNavigationBarItem(icon: FaIcon(Icons.help), label: '說明'),
          ],
        )
    );
  }
}

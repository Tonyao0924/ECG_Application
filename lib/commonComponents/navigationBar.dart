// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../Page/heartRateInfo/heartRateInfoPage.dart';
// import '../Page/home_page.dart';
// import '../Page/singleDayAnalysis/singleDayAnalysisPage.dart';
//
// class FooterNavigation extends StatelessWidget {
//   const FooterNavigation({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final pages = [const HomePage() ,const HeartRateInfoPage(),const SingleDayAnalysisPage()];
//
//     return Stack(
//         alignment: AlignmentDirectional.bottomCenter,
//         clipBehavior: Clip.none,
//         children: [
//           BottomNavigationBar(
//             selectedLabelStyle: const TextStyle(fontSize: 12),
//             unselectedLabelStyle: const TextStyle(fontSize: 12),
//             unselectedItemColor: Colors.white,
//             selectedItemColor: Colors.white,
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: const Color(0xFF709e94),
//             onTap: _onItemClick,
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: FaIcon(
//                   FontAwesomeIcons.heartPulse,
//                   color: Colors.white,
//                 ),
//                 label: '每日',
//               ),
//               BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.chartSimple, color: Colors.white),
//                 label: '頻率',
//               ),
//               BottomNavigationBarItem(
//                   icon: Icon(FontAwesomeIcons.house, color: Colors.transparent),
//                   label: ""),
//               BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.gear, color: Colors.white),
//                 label: '設定',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.help, color: Colors.white),
//                 label: '說明',
//               ),
//             ],
//           ),
//           Positioned(
//             top: -20,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: const Color(0xFFe8998d),
//                 shape: const CircleBorder(),
//                 padding: const EdgeInsets.all(15),
//               ),
//               onPressed: () => _controller.jumpToPage(0),
//               child: const FaIcon(
//                 FontAwesomeIcons.house,
//                 size: 30,
//                 color: Colors.white,
//               ),
//             ),
//           )
//         ]);
//   }
// }
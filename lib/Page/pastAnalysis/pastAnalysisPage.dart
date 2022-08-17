import 'package:ecg/Page/pastAnalysis/pastAnalysisChart.dart';
import 'package:ecg/Page/pastAnalysis/pastAnalysisPeriodDate.dart';
import 'package:ecg/Page/pastAnalysis/pastAnalysisPeriodTab.dart';
import 'package:flutter/material.dart';

import '../../commonComponents/titleBar.dart';


class PastAnalysisPage extends StatelessWidget {
  const PastAnalysisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const HeaderBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const <Widget>[
            TitleBar(title: "過往分析"),
            PeriodTab(),
            PeriodDate(),
            Expanded(child: AnalysisChart())
          ],
        ),
      ),
      // bottomNavigationBar: const FooterNavigation(),
    );
  }
}

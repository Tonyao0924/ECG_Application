import 'package:ecg/Page/singleDayAnalysis/singleDayAnalysisChart.dart';
import 'package:flutter/material.dart';

class SingleDayAnalysisPage extends StatelessWidget {
  const SingleDayAnalysisPage({Key? key}) : super(key: key);
  static const a = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FloatingActionButton(
                  onPressed: () => (a - 1),
                  backgroundColor: const Color.fromRGBO(247, 248, 248, 1),
                  child: const Icon(Icons.chevron_left_rounded),
                ),
                const Spacer(),
                const Text('單日分析',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () => (a + 1),
                  backgroundColor: const Color.fromRGBO(247, 248, 248, 1),
                  child: const Icon(Icons.more_horiz),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: (MediaQuery.of(context).size.width) / 10,
                  height: (MediaQuery.of(context).size.width) / 20,
                  child: FloatingActionButton(
                    onPressed: () => (1 + 1),
                    backgroundColor: const Color.fromRGBO(247, 248, 248, 1),
                    child: const Icon(Icons.chevron_left_rounded),
                  ),
                ),
                const Text('7/14',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: (MediaQuery.of(context).size.width) / 10,
                  height: (MediaQuery.of(context).size.width) / 20,
                  child: FloatingActionButton(
                    onPressed: () => (1 + 1),
                    backgroundColor: const Color.fromRGBO(247, 248, 248, 1),
                    child: const Icon(Icons.chevron_right_rounded),
                  ),
                ),
                const Icon(
                  Icons.date_range,
                  color: Color.fromRGBO(108, 154, 139, 1),
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width) / 45,
                  right: (MediaQuery.of(context).size.width) / 45),
              child: const LineChartSample2(),
            ),
            const SizedBox(height: 22),
          ],
        ));
  }
}

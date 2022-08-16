import 'dart:async';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class LineChartSample10 extends StatefulWidget {
  const LineChartSample10({Key? key}) : super(key: key);

  @override
  _LineChartSample10State createState() => _LineChartSample10State();
}

class _LineChartSample10State extends State<LineChartSample10> {
  final Color sinColor = Colors.redAccent;
  final Color cosColor = Colors.blueAccent;

  final limitCount = 100;
  final sinPoints = <FlSpot>[];
  final cosPoints = <FlSpot>[];

  double xValue = 0;
  double step = 0.05;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 40), (timer) {
      while (sinPoints.length > limitCount) {
        sinPoints.removeAt(0);
        cosPoints.removeAt(0);
      }
      setState(() {
        sinPoints.add(FlSpot(xValue, math.sin(xValue)));
        cosPoints.add(FlSpot(xValue, math.cos(xValue)));
      });
      xValue += step;
    });
  }

  @override
  Widget build(BuildContext context) {
    return cosPoints.isNotEmpty
        ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: 400,
          height: 300,
          child: LineChart(
            LineChartData(
              minY: -1,
              maxY: 1,
              minX: sinPoints.first.x,
              maxX: sinPoints.last.x,
              lineTouchData: LineTouchData(enabled: false),
              clipData: FlClipData.all(),
              borderData: FlBorderData(show: false),
              gridData: FlGridData(
                show: false,
                drawVerticalLine: false,
              ),
              lineBarsData: [
                sinLine(sinPoints),

              ],
              titlesData: FlTitlesData(
                show: false,
              ),
            ),
          ),
        )
      ],
    )
        : Container();
  }

  LineChartBarData sinLine(List<FlSpot> points) {
    return LineChartBarData(
      spots: points,

      dotData: FlDotData(
        show: false,
      ),
      gradient: LinearGradient(
          colors: [sinColor.withOpacity(0), sinColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.1, 1.0]),
      barWidth: 4,
      isCurved: false,
    );
  }

  LineChartBarData cosLine(List<FlSpot> points) {
    return LineChartBarData(
      spots: points,
      dotData: FlDotData(
        show: false,
      ),
      gradient: LinearGradient(
          colors: [sinColor.withOpacity(0), sinColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.1, 1.0]),
      barWidth: 4,
      isCurved: false,
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
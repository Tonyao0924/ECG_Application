import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalysisChart extends StatefulWidget {
  const AnalysisChart({Key? key}) : super(key: key);

  @override
  State<AnalysisChart> createState() => _AnalysisChartState();
}

class _AnalysisChartState extends State<AnalysisChart> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Color(0xff6a6f88), fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '7月11日';
        break;
      case 1:
        text = '7月12日';
        break;
      case 2:
        text = '7月13日';
        break;
      case 3:
        text = '7月14日';
        break;
      case 4:
        text = '7月15日';
        break;
      case 5:
        text = '7月16日';
        break;
      case 6:
        text = '7月17日';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    // if (value == meta.max) {
    //   return Container();
    // }
    const style = TextStyle(
      color: Color(
        0xff6a6f88,
      ),
      fontSize: 12,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        meta.formattedValue,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.66,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        color: const Color(0xFFe2ecea),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: BarChart(
            BarChartData(
              maxY: 100,
              alignment: BarChartAlignment.spaceAround,
              barTouchData: BarTouchData(
                enabled: false,
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 28,
                    getTitlesWidget: bottomTitles,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: leftTitles,
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: FlGridData(
                show: true,
                checkToShowHorizontalLine: (value) => value % 10 == 0,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: const Color(0xffe7e8ec),
                  strokeWidth: 1,
                ),
                drawVerticalLine: false,
              ),
              borderData: FlBorderData(
                show: false,
              ),
              groupsSpace: 20,
              barGroups: getData(),
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 1,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 13,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 22,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 5,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 33,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 44,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              color: const Color(0xFFe8998d),
              width: 18,
              toY: 3,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../../manager/singleDayAnalysisManager.dart';
import '../../model/singleDayAnalysisModel.dart';
class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({Key? key}) : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();


}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color.fromRGBO(232, 153, 141, 1),
    const Color.fromRGBO(232, 153, 141, 1)
  ];
  static List<FlSpot> spotData2 =[
    FlSpot(0, 0.3),
    FlSpot(1, 0.2),
    FlSpot(2, 0.5),
    FlSpot(3, 0.31),
    FlSpot(4, 0.4),
    FlSpot(5, 0),
    FlSpot(6, 0.4),
    FlSpot(7, 0.2),
  ];
  static List<FlSpot> spotData =[];
  bool showAvg = false;
  static Color dateBarColor= const Color.fromRGBO(247, 248, 248, 1);
  static Color dateBarContrastColor= const Color.fromRGBO(108, 154, 139, 1);
  static Color dateBarFontContrastColor = Colors.white;
  static Color dateBarFontColor = const Color.fromRGBO(201, 198, 199, 1);
  static Color tempColor=Colors.white;

  static var physicalScreenSize = window.physicalSize;
  static var physicalWidth = physicalScreenSize.width;
  // static double dateBarButtonWidth=physicalWidth/10;
  static double dateBarButtonWidth=50;

  @override
  void initState() {//Request Analysis Data from Backend
    List<SingleDayAnalysis> singleDayAnalysisList;
    SingleDataAnalysisRepository().getSingleDayAnalysisData().then((String result){
      setState(() {
        spotData =[];
        final List t= jsonDecode(result);
        final List<SingleDayAnalysis> singleDayAnalysisList =
        t.map((item) => SingleDayAnalysis.fromJson(item)).toList();
        for(var i in singleDayAnalysisList){
          spotData.add(FlSpot(
              double.parse(i.getDay()),
              double.parse(i.getData())
          )
          );
          log(i.toString());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {  },
                    child: Text(
                        "Tue\n\n11",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontColor,
                        )
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    )
                )
            ),
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {
                      tempColor=dateBarColor;
                      dateBarColor=dateBarContrastColor;
                      dateBarContrastColor=tempColor;
                      tempColor=dateBarFontContrastColor;
                      dateBarFontContrastColor=dateBarFontColor;
                      dateBarFontColor=tempColor;
                    },
                    child: Text(
                        "Wed\n\n12",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontColor,
                        )
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    )
                )
            ),
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {  },
                    child: Text(
                        "Thu\n\n13",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontColor,
                        )
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    )
                )
            ),
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarContrastColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    ),
                    child: Text(
                        "Fri\n\n14",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontContrastColor,
                        )
                    )
                )
            ),
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    ),
                    child: Text(
                        "Sat\n\n15",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontColor,
                        )
                    )
                )
            ),
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    ),
                    child: Text(
                        "Sun\n\n16",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontColor,
                        )
                    )
                )
            ),
            SizedBox(
                width: dateBarButtonWidth,
                height: (MediaQuery.of(context).size.height)/10,
                child: TextButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dateBarColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              // side: const BorderSide(color: Colors.red)
                            )
                        )
                    ),
                    child: Text(
                        "Mon\n\n17",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width)/25,
                          color:dateBarFontColor,
                        )
                    )
                )
            ),
          ],
        ),
        Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.7,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Color.fromRGBO(226, 236, 234, 1)),
                child: Container(
                  margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height)/20.0 ),
                  padding: const EdgeInsets.only(
                      right: 18.0, left: 12.0, top: 24, bottom: 28),
                  child: LineChart(
                    showAvg ? avgData() : mainData(),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 60,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    showAvg = !showAvg;
                  });
                },
                child: Text(
                  '更改樣式',
                  style: TextStyle(
                      fontSize: 10,
                      color:
                      showAvg ? Colors.white : Colors.black),
                ),
              ),
            ),
          ],
        )] ,
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {

    TextStyle style = TextStyle(
      color: const Color.fromRGBO(129, 141, 157, 1),
      fontWeight: FontWeight.bold,
      fontSize: (MediaQuery.of(context).size.width)/40,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('00~03', style: style,);
        break;
      case 1:
        text = Text('03~06', style: style);
        break;
      case 2:
        text = Text('06~09', style: style);
        break;
      case 3:
        text = Text('09~12', style: style);
        break;
      case 4:
        text = Text('12~15', style: style);
        break;
      case 5:
        text = Text('15~18', style: style);
        break;
      case 6:
        text = Text('18~21', style: style);
        break;
      case 7:
        text = Text('21~24', style: style);
        break;
      default:
        text =  Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color.fromRGBO(129, 141, 157, 1),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if(value.toDouble()==0.0){
      text = '0%';
    }else if(value.toDouble()>=0.1 &&value.toDouble()<0.2){
      text = '10%';
    } else if(value.toDouble()==0.2) {
      text = '20%';
    }else if(value.toDouble()>0.2 &&value.toDouble()<=0.31){
      text = '30%';
    } else if(value.toDouble()==0.4){
      text = '40%';
    }
    else if(value.toDouble()==0.5){
      text = '50%';
    }
    else if(value.toDouble()==0.6){
      text = '60%';
    }
    else if(value.toDouble()==0.7){
      text = '70%';
    }else if(value.toDouble()>=0.7&&value.toDouble()<0.89){
      text = '80%';
    }
    else if(value.toDouble()>=0.89&&value.toDouble()<=0.99){
      text = '90%';
    }else if(value.toDouble()>=0.99){
      text = '100%';
    }else{
      text = '';
    }
    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color.fromRGBO(193, 221, 181, 1),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: (MediaQuery.of(context).size.height)/20.0,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 0.1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 0)),
      minX: 0,
      maxX: 7,
      minY: 0,
      maxY: 1,
      lineBarsData: [
        LineChartBarData(
          spots: spotData,
          isCurved: false,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 0.1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 7,
      minY: 0,
      maxY: 1.0,
      lineBarsData: [
        LineChartBarData(
          spots: spotData,
          isCurved: false,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}

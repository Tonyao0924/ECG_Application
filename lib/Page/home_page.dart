import 'package:flutter/material.dart';

import 'package:ecg/commonComponents/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:ecg/model/homePageSaleModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(10),
      //   child: AppBar(
      //     backgroundColor: const Color(0xFF6C9A8B),
      //     automaticallyImplyLeading: false,
      //     actions: const [],
      //     elevation: 1,
      //   ),
      // ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 325,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFE2ECEA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(), // Chart title
                    title: ChartTitle(text: 'ECG'),
                    // Enable legend
                    //legend: Legend(isVisible: true),
                    // Enable tooltip
                    tooltipBehavior: _tooltipBehavior,
                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                        // Bind data source
                          dataSource: <SalesData>[
                            SalesData('1', 35),
                            SalesData('2', 28),
                            SalesData('3', 34),
                            SalesData('4', 32),
                            SalesData('5', 40),
                            SalesData('6', 35),
                            SalesData('7', 28),
                            SalesData('8', 34),
                            SalesData('9', 32),
                            SalesData('10', 40),
                            SalesData('11', 35),
                            SalesData('12', 28),
                            SalesData('13', 34),
                            SalesData('14', 32),
                            SalesData('15', 40),
                            SalesData('16', 35),
                            SalesData('17', 28),
                            SalesData('18', 34),
                            SalesData('19', 32),
                            SalesData('20', 40),
                            SalesData('21', 35),
                            SalesData('22', 28),
                            SalesData('23', 34),
                            SalesData('24', 32),
                            SalesData('25', 40),
                            SalesData('26', 35),
                            SalesData('27', 28),
                            SalesData('28', 34),
                            SalesData('29', 32),
                            SalesData('30', 40),
                            SalesData('31', 35),
                            SalesData('32', 28),
                            SalesData('33', 34),
                            SalesData('34', 32),
                            SalesData('35', 40),
                            SalesData('36', 35),
                            SalesData('37', 28),
                            SalesData('38', 34),
                            SalesData('39', 32),
                            SalesData('40', 40),
                            SalesData('41', 35),
                            SalesData('42', 28),
                            SalesData('43', 34),
                            SalesData('44', 32),
                            SalesData('45', 40),
                            SalesData('46', 35),
                            SalesData('47', 28),
                            SalesData('48', 34),
                            SalesData('49', 32),
                            SalesData('50', 40),
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales)
                    ]),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2ECEA),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '最近發生時間',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                '16:59-17:01',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFFE6AFA5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/icons8-time-machine-48.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2ECEA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '最近結果機率',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                '57%',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFFE6AFA5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CircularPercentIndicator(
                          percent: 0.57,
                          radius: 40,
                          lineWidth: 15,
                          animation: true,
                          progressColor: const Color(0xFF6C9A8B),
                          backgroundColor: const Color(0xFFF1F4F8),
                          center: Text(
                            '57%',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF6C9A8B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          startAngle: 180,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 325,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFE2ECEA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            '最近症狀',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '胸痛',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                color: const Color(0xFFE6AFA5),
                              ),
                            ),
                            Image.asset(
                              'assets/images/icons8-chest-pain-100.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '噁心',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                color: const Color(0xFFE6AFA5),
                              ),
                            ),
                            Image.asset(
                              'assets/images/icons8-vomiting-96.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '呼吸困難',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                color: const Color(0xFFE6AFA5),
                              ),
                            ),
                            Image.asset(
                              'assets/images/icons8-asthma-64.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar:Theme(
      //   data: ThemeData(
      //     splashColor: Colors.transparent,
      //     highlightColor: Colors.transparent,
      //   ),
      //   child: const FooterNavigation(),
      // )
    );
  }
}

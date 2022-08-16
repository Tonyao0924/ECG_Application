import 'package:flutter/material.dart';


import 'heartRateInfoChart.dart';

class HeartRateInfoPage extends StatefulWidget {
  const HeartRateInfoPage({Key? key}) : super(key: key);

  @override
  _GroupWidgetState createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<HeartRateInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: true,
            padding: const EdgeInsets.all(0.0),
            physics: const BouncingScrollPhysics(),
            child:Stack(
              alignment:Alignment.topCenter,
              children: <Widget>[

                Column(
                  children: <Widget>[
                    const Text(" "),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('assets/images/Back-Navs.png')
                        ,const Text('心律資訊', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(29, 21, 23, 1),
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1.25
                        ),),
                        Image.asset('assets/images/Detail-Navs.png')
                      ],
                    ),
                    const Text(" "),
                    const Text(" "),
                    Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[Image.asset('assets/images/Group 10015.png'),
                          const Positioned(
                            top:170,
                            child: Text(" 66 BPN",textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0
                              ),
                            ),
                          ),
                        ]
                    ),
                    const Text(" "),
                    const Text(" "),
                    Container(

                      decoration: const BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(99),
                          topRight: Radius.circular(99),
                          bottomLeft: Radius.circular(99),
                          bottomRight: Radius.circular(99),
                        ),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(149, 173, 254, 0.30000001192092896),
                            offset: Offset(0,10),
                            blurRadius: 22
                        )],
                        gradient : LinearGradient(
                            begin: Alignment(-0.7458379864692688,-0.05771365016698837),
                            end: Alignment(0.05771365016698837,-0.05470772832632065),
                            colors: [Color.fromRGBO(112, 158, 148, 1),Color.fromRGBO(157, 206, 255, 1)]
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,

                        children: const <Widget>[
                          Text('心律正常', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',//字體
                              fontSize: 20,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,//文字正常粗細
                              height: 1.2
                          ),),

                        ],
                      ),
                    ),//心率方塊
                    const LineChartSample10(),
                  ],
                ),
              ],
            )));
  }
}
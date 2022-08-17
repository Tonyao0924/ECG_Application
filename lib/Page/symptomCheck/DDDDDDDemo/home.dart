import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../symptomCheckPage.dart';



class Home extends StatefulWidget{
  const  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();

}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body: const SymptomCheckPage(),



      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xFFE8998D),
        child: FaIcon(FontAwesomeIcons.house,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: const DDDemoFooterNavigation(),



    );
  }
}



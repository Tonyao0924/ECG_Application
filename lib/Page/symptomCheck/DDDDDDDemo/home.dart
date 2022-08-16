import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../symptom_check.dart';

import 'navbar.dart'; // for Demo , will discuss when meeting


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
      body: SymptomCheck(),



      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: FaIcon(FontAwesomeIcons.house,color: Colors.white,),
        backgroundColor: const Color(0xFFE8998D),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: DDDemoFooterNavigation(),



    );
  }
}



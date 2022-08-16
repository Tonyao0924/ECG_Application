import 'dart:convert';
import 'dart:io';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

abstract class SingleDataAnalysisManager {
  Future<String> getSingleDayAnalysisData();
}

class SingleDataAnalysisRepository implements SingleDataAnalysisManager {
  Future<String> _getSingleDayAnalysisData() async {
    try{
      var response = await http.get(
        Uri.parse('http://127.0.0.1:8000/api/singleDayAnalysis/'),
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json",
        },
      );
      return response.body;
    }on Error catch(error){
      if (kDebugMode) {
        print(error);
      }
      return Future.value("123");
    }
  }

  @override
  Future<String> getSingleDayAnalysisData() {
    return _getSingleDayAnalysisData();
  }

}


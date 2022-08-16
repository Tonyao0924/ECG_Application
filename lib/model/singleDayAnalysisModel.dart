class SingleDayAnalysis{
  var day;
  var data;

  SingleDayAnalysis.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    data = json['data'];
  }

  String getDay(){
    return day.toString();
  }
  String getData(){
    return data.toString();
  }
  @override
  String toString() {
    Map<String, dynamic> temp ={'day':day,"data":data};
    return temp.toString();
  }
}
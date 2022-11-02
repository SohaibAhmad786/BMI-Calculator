// ignore_for_file: non_constant_identifier_names

import 'dart:math';

class Calculation {
  
  Calculation({required this.height,required this.weight});

  final int height,weight;
  double? _bmi;
  // ignore: non_constant_identifier_names
  String CalculateBmi(){
    _bmi=weight/pow(height/100, 2);
    return _bmi!.toStringAsFixed(1);
  }
  // ignore: non_constant_identifier_names
  String GetResult(){
    if (_bmi!>=25) {
      return "over weight";
      }
    else if(_bmi!>=18.5){
      return "normal";
    }else{
      return "under weight";
    }
  }

  String GetMessage(){
    if (_bmi!>=25) {
      return "You have a higher than normal body weight. Try to exercise more.";
      }
    else if(_bmi!>=18.5){
      return "You have a normal body weight. Good job!";
    }else{
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
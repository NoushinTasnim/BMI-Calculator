import 'dart:math';

class calculation{
  calculation({required this.height, required this. weight});

  final int height, weight;

  double _bmi=0.0;

  double calculate(){
    _bmi = weight/ pow(height/100, 2);
    return _bmi;
  }

  String getResult(){
    if(_bmi <18.5){
      return 'Underweight';
    }
    else if(_bmi < 24.5){
      return 'Normal';
    }
    else if(_bmi < 30.0){
      return 'Overweight';
    }
    else{
      return 'Obese';
    }
  }

  String getInterpretetion(){
    if(_bmi <18.5){
      return 'You have a lower than normal body weight. You should eat a bit more.';
    }
    else if(_bmi < 24.5){
      return 'You have a normal body weight. Good job!';
    }
    else if(_bmi < 30.0){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else{
      return 'Your weight is very high than normal. You should consult a doctor.';
    }
  }
}
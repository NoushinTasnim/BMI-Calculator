import 'package:flutter/material.dart';
import 'reusables/reusable_card.dart';
import 'reusables/reusable_button.dart';
import 'reusables/reusable_column.dart';
import 'constants.dart';
import 'ResultScreen.dart';
import 'calculation.dart';


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  void changeColor(int gender){
    if(gender==1){
      if(male_color==inactive_color){
        male_color = active_color;
        female_color = inactive_color;
      }
      else{
        male_color = inactive_color;
      }
    }
    else {
      if(female_color==inactive_color){
        female_color = active_color;
        male_color = inactive_color;
      }
      else{
        female_color = inactive_color;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'), // Path to your image asset
            fit: BoxFit.cover, // Adjust the image fit as needed
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: male_color,
                      cardChild: GestureDetector(
                        onTap: (){
                          setState(() {
                            changeColor(1);
                          });
                        },
                          child: reusableColumn(
                            text: "Male",
                            string: "male",
                          ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: female_color,
                      cardChild: GestureDetector(
                        onTap: (){
                          setState(() {
                            changeColor(2);
                          });
                        },
                        child: reusableColumn(
                          text: "Female",
                          string: "female",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ReusableCard(
                colour: bg_col,
                cardChild: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                  child: Row(
                    children: <Widget>[
                      ReusableButtons(
                        btnChild: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(age>1){
                                age--;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Color(0xffFF8FB1),
                            padding: EdgeInsets.all(8.0),
                            shadowColor:  Color(0xFF533535),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Age: " + age.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Market_Deco',
                            fontSize: 24,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      ReusableButtons(
                        btnChild: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(age<100){
                                age++;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Color(0xffFF8FB1),
                            padding: EdgeInsets.all(8.0),
                            shadowColor:  Color(0xFF533535),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: bg_col,
                cardChild: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  "Height: " + height.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Market_Deco',
                                    fontSize: 24,
                                    letterSpacing: 2,
                                  ),

                                ),
                                Text(
                                  "cm",

                                ),
                              ],
                            ),
                            Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 200.0,
                              activeColor: shade,
                              inactiveColor: pinky,
                              thumbColor: shade,
                              onChanged: (double val){
                                setState(() {
                                  height = val.round();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: bg_col,
                cardChild: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0,8.0,16.0,8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  "Weight: "+ weight.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Market_Deco',
                                    fontSize: 24,
                                    letterSpacing: 2,
                                  ),
                                ),
                                Text(
                                  "kg",
                                ),
                              ],
                            ),
                            Slider(
                              value: weight.toDouble(),
                              min: 20.0,
                              max: 100.0,
                              activeColor: shade,
                              inactiveColor: pinky,
                              thumbColor: shade,
                              onChanged: (double val){
                                setState(() {
                                  weight = val.round();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity, // Set the container width to occupy the full screen width
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF533535), // Border color
                  width: 2.0, // Border width
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF533535),// Shadow color
                    spreadRadius: 0, // Spread radius
                    blurRadius: 0, // Blur radius
                    offset: Offset(5, 4), // Offset in the horizontal and vertical direction
                  ),
                ],
                color: Color(0xFFEA5455),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: MaterialButton(
                onPressed:(){
                  calculation calcu = calculation(height: height, weight: weight);
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ResultScreen(
                      bmiRes: calcu.calculate(),
                      resTex: calcu.getResult(),
                      resInt: calcu.getInterpretetion(),
                    ),
                  ),
                  );
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    color: Color(0xFFF5EDCE),
                    fontSize: 24,
                    fontFamily: 'Market_Deco'
                  ),
                ),
              ),
            ),
          ] ,
        ),
      ),
    );
  }
}
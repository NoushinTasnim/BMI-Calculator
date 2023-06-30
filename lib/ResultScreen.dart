import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen({super.key,
    required this.bmiRes,
    required this.resInt,
    required this.resTex,
  });

  final double bmiRes;
  final String resTex;
  final String resInt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.png'), // Path to your image asset
              fit: BoxFit.cover, // Adjust the image fit as needed
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'YOUR RESULT:',
                  style: TextStyle(
                    color: shade,
                    fontSize: 36,
                    fontFamily: 'Market_Deco',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: pinky,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF533535), // Border color
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
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(48.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          resTex,
                          style: TextStyle(
                            color: shade,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Market_Deco',
                          ),
                        ),
                        Text(
                          bmiRes.toStringAsFixed(1),
                          style: TextStyle(
                            color: bg_col,
                            fontSize: 64,
                            fontFamily: 'Vintage_Wave',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12.0,24.0,12.0,0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '16.0',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '18.5',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '24.5',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '30.0',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          color: shade,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                      Text(
                        '40.0',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontFamily: 'Market_Deco',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                    children: [
                      Slider(
                        activeColor: pinky,
                        inactiveColor: active_color,
                        min: 16.0,
                        max: 40.0,
                        onChanged: (value) {},
                        value: bmiRes, // Example value, replace with your actual value
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        resInt,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Market_deco',
                          fontSize: 20,
                          color: shade,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


import '../constants/app_constants.dart';
import '../widgets/left_bar.dart';
import '../widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();

  double _bmiResult =0;
  String _textResult = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator", style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w200, fontSize: 18),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,

      body: SingleChildScrollView(
        
        child: Column(children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Container(
                  
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _heightController,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Height",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                      )
                    ),
                   ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _weightController,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                      )
                    ),
                   ),
                ),
            ],
          ),
          SizedBox(height: 30,),

// calculate button
           GestureDetector(
             onTap: (){
              double _h = double.parse(_heightController.text);
              double _w = double.parse(_weightController.text);

              setState(() {
                _bmiResult =  _w / (_h * _h);

                if ( _bmiResult > 25){
                  _textResult = "You\'re over weight";
                }
                else if ( _bmiResult >= 18.5 && _bmiResult < 25) {
                  _textResult = "You\'re Normal";
                }
                else {
                  _textResult = "You\'re under wight";
                }
              });
             },
              child: Container(
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: accentHexColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ),
           ),
          SizedBox(height: 20,),


  // bmi score
          Container(
            child: Text(
              _bmiResult.toStringAsFixed(2),
              style: TextStyle(
                color: accentHexColor,
                fontSize: 85,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height: 20,),

    // resultes over weight, underweight etc.
          Visibility(
            visible: _textResult.isNotEmpty,
                      child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                  color: accentHexColor,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),

         

           SizedBox(height: 20,),
          // design bars
          LeftBar(barWidth: 42),
          SizedBox(height: 20,),

          LeftBar(barWidth: 93),
          SizedBox(height: 20,),
          
          LeftBar(barWidth: 60),
          RightBar(barWidth: 57),
          SizedBox(height: 30,),

        
          RightBar(barWidth: 87),
        

        ],),
      ),
    );
  }
}
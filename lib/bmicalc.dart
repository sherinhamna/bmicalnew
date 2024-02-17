import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALC',style: TextStyle(fontStyle: FontStyle.italic),),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4,width: 50,),
        Padding(
          padding: const EdgeInsets.only(left: 89.0,right: 50.0),
          child: TextField(
            controller: weight,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'weight',
            hintStyle: TextStyle(color: Colors.red),
          ),
          ),
        ),
           SizedBox(height: 6,width: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 89.0,right: 50.0),
              child: TextField(
                controller: height,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'height',
                  hintStyle: TextStyle(color: Colors.red),
                ),
              ),
            ),
            TextButton(onPressed: ()
            {
              setState(() {

              calculate();
              });
            },
                child: Text('calculate')),
            SizedBox(height: 20,),
            Text('result')
      ]),
    );
  }
}

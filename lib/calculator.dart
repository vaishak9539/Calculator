// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors, empty_statements

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var FirstNum=0;
  var SecontNum=0;
  var operater;
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200,bottom: 10),
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(
                    child: Text(result!=null?result.toString():"")),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){

                   },
                   child: Text("C"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Icon(Icons.close)
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("%"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("/"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                            
                    FloatingActionButton(onPressed: (){
                      FirstNum=7;
                    },
                   child: Text("7"),
                   ),
                  
                    FloatingActionButton(onPressed: (){
                      FirstNum=8;
                    },
                   child: Text("8"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=9;
                    },
                   child: Text("9"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("X"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){
                    FirstNum=4;
                   },
                   child: Text("4"),
                   ),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        FirstNum=5;
                      });
                    },
                   child: Text("5"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=6;
                    },
                   child: Text("6"),
                   ),
                    FloatingActionButton(onPressed: (){
                      operater="-";
                       SecontNum=FirstNum;
                        FirstNum=0;
                    },
                   child: Text("-"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){
                    FirstNum=1;
                   },
                   child: Text("1"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=2;
                    },
                   child: Text("2"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=3;
                    },
                   child: Text("3"),
                   ),
                    FloatingActionButton(onPressed: (){
                      operater='+';
                      SecontNum=FirstNum;
                      FirstNum=0;
                    },
                   child: Text("+"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){},
                   child: Text("00"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("0"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("."),
                   ),
                    FloatingActionButton(onPressed: (){
                      if(operater=="+"){
                         setState(() {
                            result=FirstNum+SecontNum;
                          
                         });
                      };
                      if(operater=="-"){
                        result=SecontNum-FirstNum;
                        result;
                      }
                      
                    },
                   child: Text("="),
                   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'extraweather.dart';

String City = "NEW ZEALAND";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var focusNode = FocusNode();
  bool searchBar = false;
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue,
     body: Column(
      children: [
           Container(
            child: searchBar?
            TextField(
              decoration: InputDecoration(
                border: 
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.black,
                filled: false,
                hintText: "Enter a city Name",
               
              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (value){
                var temp;
                if(temp == null){
                  showDialog(
                    context: context, 
                    builder: (BuildContext context) {
                      return AlertDialog(
                         backgroundColor: Color(0xff030317),
                         title: Text("City Not Found"),
                         content: Text("please check the city name"),
                         actions: [
                          TextButton(
                            onPressed: ()
                            {
                              Navigator.of(context).pop();},

                           child: Text("ok"))
                         ],

                      );
                          
                    }
                    );
                }
              },
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    searchBar=true;
                    setState(() {
                      
                    });
                    focusNode.requestFocus();
                  },
                  child: Text(
                    " " + City,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                       fontSize: 30,
                    ),
                  ),
                )
            ],
            )
          ),
            Container(
             height: 220,
             child: Stack(
              children: [
                   Positioned(
                     bottom: 0,
                     right: 0,
                     left: 0, 
                     
                     child: Center(
                      child: Column(
                      
                        children: [
                          
                          Text(

                            "9",
                            style: TextStyle(
                              
                                height: 0.1,
                                fontSize: 150,
                                fontWeight: FontWeight.bold,
                            ),
                            ),

                      ],),
                     ),
                   )
              ],
             ),

            ),
            SizedBox(height: 20,),
            ExtraWeather(),

      ]
      ),
    );
  }
}

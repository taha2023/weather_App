import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraWeather extends StatelessWidget {
  const ExtraWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(100),
      child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Column(
               children: [
                
             Text(
              "78" + " %",
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
             ),
             SizedBox(height: 10),
             Text("Humidity",
             style: TextStyle(
              color: Colors.black54,
              fontSize: 16,

             ),
             
             )
               ],
             ),
            Column(
               children: [
             Text(
              "11" + " km",
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
             ),
             SizedBox(height: 10),
             Text("Visibility",
             style: TextStyle(
              color: Colors.black54,
              fontSize: 16,

             ),
             
             )
               ],
             ),
              Column(
               children: [
                
             Text(
              "Low" + " 0",
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
             ),
             SizedBox(height: 10),
             Text("uVindex",
             style: TextStyle(
              color: Colors.black54,
              fontSize: 16,

             ),
             
             )
               ],
             ),

           ],

      ),
    );
  }
}
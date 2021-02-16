


import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class CustomLinearProgress extends StatelessWidget {
  final  Color color ;
  final double height;
  final int currentValue ,totalValue;
  final EdgeInsetsGeometry margin ;
  CustomLinearProgress({this.color, this.height, this.currentValue=0, this.margin, this.totalValue});
  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [
        Text('$currentValue',style: TextStyle(color: color,fontSize: 18),),
        SizedBox(height: 10,),
        Container(
          margin: margin?? EdgeInsets.symmetric(horizontal: 20),
          padding:  EdgeInsets.all(5),
          height:height?? 150,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
                color:color?? Colors.redAccent,
                width: 0.5
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: currentValue/totalValue,
            child: Container(
              decoration: BoxDecoration(
                color:   color?? Colors.redAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topRight: currentValue==totalValue ?Radius.circular(60):Radius.circular(0),
                    topLeft: currentValue==totalValue ?Radius.circular(60):Radius.circular(0),

                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

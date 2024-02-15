import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomUnderline extends StatelessWidget {
 // final double size;
  final Color? color;
  final String text;
  const CustomUnderline({super.key, this.color, required this.text,});
  @override
  Widget build(BuildContext context) {
     final textPainter = TextPainter(
      text: TextSpan(
          text: text,
          style: TextStyle(
              fontSize: screenWidth(22),
              fontWeight:  FontWeight.w800,
              color: color)),
      textDirection: TextDirection.ltr,
    )..layout();
      List<Color> underlineColors = [
      AppColors.blue,
      AppColors.orange,
      AppColors.blue,
    ];
     final segmentWidth = textPainter.width / underlineColors.length; 
     final containers = underlineColors
        .map((color) => Container(
              margin: EdgeInsets.only(left: screenWidth(80),),
              width: Colors.orange==color?segmentWidth-5:segmentWidth+9,
           // width: segmentWidth,
              height: 3.2,
              decoration: BoxDecoration(
                 color: color,
                 borderRadius: BorderRadius.circular(20)
              ),
            ))
        .toList();
    return Stack(
      children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ CustomText(text: text,
      styleType: TextStyleType.FOCUSTEXT,
      fontSize: screenWidth(23),
      ), SizedBox(
        height: screenWidth(100),),
       Row(
        children: 
         containers
      )
      ],)
       ] );
    
  }}
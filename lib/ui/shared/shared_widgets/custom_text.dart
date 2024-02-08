import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/core/enums/text_style_type.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/utlis.dart';
enum TextStyleType {
  TITLE,
  FOCUSTEXT,
  BODY,
  NUMBER,
}
class CustomText extends StatelessWidget {
  final String text;
  final TextStyleType? styleType;
  final Color? mColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  const CustomText({
    super.key,
    required this.text,
    this.styleType = TextStyleType.BODY,
    this.fontWeight=FontWeight.w400,
    this.fontSize,
    this.mColor, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getStyle(),
    );
  }
  TextStyle getStyle() {
    TextStyle result = TextStyle();
    switch (styleType) {
      case TextStyleType.TITLE:
        result = TextStyle(
            fontSize: screenWidth(22),
            fontWeight:FontWeight.w800,
            color: AppColors.white
            );
        break;
      case TextStyleType.FOCUSTEXT:
        result = TextStyle(
            fontSize: fontSize ?? null, fontWeight: FontWeight.w600, color: mColor,height: height??null);
        break;
      case TextStyleType.BODY:
        result = TextStyle(
            fontSize: fontSize ?? null, fontWeight: fontWeight, color: mColor);
        break;
      case TextStyleType.NUMBER:
        result = TextStyle(
            fontSize:fontSize??null, fontWeight: fontWeight, color: mColor,);
        break;

      default:
        result = TextStyle(
            fontSize: screenWidth(25),
            fontWeight: FontWeight.w400,
            color: mColor);
        break;
    }

    return result;
  }
}

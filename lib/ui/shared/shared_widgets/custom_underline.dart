import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/shared_widgets/custom_text.dart';
import 'package:task_P2/ui/shared/utlis.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   final String text;
   final bool? icon;
  CustomAppBar({
 
    // this.heightt = kToolbarHeight,
     required this.text, this.icon,
  });

  @override
  Size get preferredSize => Size.fromHeight(screenWidth(3.7));

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: AppColors.blue,
      flexibleSpace: Padding(
        padding:  EdgeInsetsDirectional.only(top: screenWidth(10),start: screenWidth(22),end: screenWidth(22)),
        child: Row(
    children: [
      Image.asset('assets/images/pngs/of.png',
      width: screenWidth(7),
      ),
      CustomText(text: text,
      styleType: TextStyleType.TITLE,
      ),
      Spacer(),
      icon==true?
      Row(children: [
          Icon(Icons.arrow_back_ios,
      color: AppColors.white,
      ),
      Image.asset('assets/images/pngs/ball.png')
      ],): Row(
      )
    
    ],
   )
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        )
      ),
      );
  }
}
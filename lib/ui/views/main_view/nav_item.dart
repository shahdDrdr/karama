import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/utlis.dart';
class NavItem extends StatelessWidget {
  final Function onTap;
  final String? img;
  final String text;
  const NavItem({super.key, required this.onTap,  this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Padding(
        padding:  EdgeInsetsDirectional.only(),
        child: Column(children: [
          Container(
            child: img!=null?
            Image.asset('assets/images/pngs/${img}.png',
            width: screenWidth(13),
           color: AppColors.white,):null
           ),
          Text(text,
          style: TextStyle(color: AppColors.white),
          )
        ],),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:task_P2/ui/views/main_view/nav_item.dart';

enum BottomNavigationEnum{
HOME,
RESULTS,
MATCHES,
CLUP,
MAEUSIAM,
}
class CustomBottomNav extends StatefulWidget {
   final BottomNavigationEnum selectedView;
  final Function(BottomNavigationEnum, int) onTap;
  const CustomBottomNav({super.key, required this.selectedView, required this.onTap});
  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: screenWidth(22),start: screenWidth(22),end: screenWidth(22)),
      height: screenWidth(5.3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
        color: AppColors.blue
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: screenWidth(27)),
            child: NavItem(onTap: (){
              widget.onTap(BottomNavigationEnum.HOME,0);
            },
            img: 'icon_home',
            text: 'الرئيسية',
            ),
          ),
           NavItem(onTap: (){
            widget.onTap(BottomNavigationEnum.RESULTS,1);
                   },
                   img: 'icon_improve',
                   text: 'النتائج',
                   ),
                   //top: screenWidth(18),start: screenWidth(35)
             Padding(
               padding:  EdgeInsetsDirectional.only(top: screenWidth(20)),
               child: Center(
                 child: NavItem(onTap: (){
                           widget.onTap(BottomNavigationEnum.MATCHES,2);
                         },
                         text: 'المباريات',
                         ),
               ),
             ),
             NavItem(onTap: (){
                       widget.onTap(BottomNavigationEnum.MAEUSIAM,3);
                     },
                     img: 'icon_clup',
                     text: 'عن النادي',
                     ),
            NavItem(onTap: (){
            widget.onTap(BottomNavigationEnum.CLUP,4);
          },
          img: 'icon_museum',
          text: 'المتحف',
          )
        ],
      ),
    
    ) ;
  }
}
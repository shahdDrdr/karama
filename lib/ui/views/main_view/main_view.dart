


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/ui/shared/colors.dart';
import 'package:task_P2/ui/shared/utlis.dart';
import 'package:task_P2/ui/views/home_view/home_view.dart';
import 'package:task_P2/ui/views/main_view/main_controller.dart';

import 'bottom_navigation_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
 MainController controllerr=Get.put(MainController());
   GlobalKey<ScaffoldState> scafolldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return   Scaffold(
        floatingActionButton: SizedBox(
          width: screenWidth(6),
          height: screenWidth(6),
          child:   FittedBox(child: FloatingActionButton(onPressed: (){
          controllerr.controller.jumpToPage(2);
            controllerr.button.value=2;
            },
          child: Image.asset("assets/images/pngs/of.png",
          width: screenWidth(13),
          ),backgroundColor: controllerr.button.value==2?AppColors.orange:AppColors.blue,
          ),)
        ),
        key: scafolldKey,
       // drawer: SideMenu(),
        bottomNavigationBar: CustomBottomNav(
          onTap: (selectedView, index) {
            controllerr.select.value = selectedView;
            controllerr.controller.jumpToPage(index);
            controllerr.button.value=index;
            //! here notify onTap in navitem
          },
          selectedView: controllerr.select.value,
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controllerr.controller,
          children: [
         HomeView(),
         HomeView(),
         HomeView(),
         HomeView(),
         HomeView(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
      })
     
    );
  }
}
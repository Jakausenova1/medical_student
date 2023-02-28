
import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_svg.dart';
import 'package:odnajdyvkgma/core/ui/widgets/app_nav_bar_button.dart';



class AppBottomNavBar extends StatelessWidget {
   const AppBottomNavBar({
    super.key, this.selectItem, required this.initPage,
  });
  final Function(int)? selectItem;
  final int initPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -2),
          blurRadius: 8,
          color: AppColors.lightGrey,
        )
      ]),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppNavBarButton(svgPath: AppSvg.home, isSelected: 0==initPage, onTap: initPage ==0 ?null : (){
            selectItem!(0);
          },),
          AppNavBarButton(svgPath: AppSvg.cal, isSelected: 1==initPage, onTap: initPage ==1 ?null : (){
            selectItem!(1);
          },),
          const SizedBox(width: 50,),
          AppNavBarButton(svgPath: AppSvg.msg, isSelected: 2==initPage, onTap: initPage ==2 ?null : (){
            selectItem!(2);
          },),
          AppNavBarButton(svgPath: AppSvg.profile, isSelected: 3==initPage, onTap: initPage ==3 ?null : (){
            selectItem!(3);
          },),
        ],
      ),
    );
  }
}

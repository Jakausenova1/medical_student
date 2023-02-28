import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';

class AppNavBarButton extends StatelessWidget {
  const AppNavBarButton({super.key, required this.svgPath, required this.isSelected, this.onTap, this.visible = true});
  final String svgPath;
  final bool isSelected;
  final Function()? onTap;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return visible? Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: InkWell(
            onTap: onTap,
            child: SvgPicture.asset(svgPath,colorFilter: ColorFilter.mode(
                          isSelected
                              ? AppColors.liberty
                              : AppColors.raisinBlack,
                          BlendMode.srcIn),),
          ),

    ): const SizedBox(height: 50,width: 50,);
  }
}
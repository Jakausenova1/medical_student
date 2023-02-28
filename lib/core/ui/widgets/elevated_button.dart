import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    required this.style,
  }) : super(key: key);
  final String title;
  final Function() onPressed;
  final Color? backgroundColor;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,

      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        
        gradient:backgroundColor == null? const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [AppColors.blue, AppColors.purple],
        ):LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [backgroundColor!,backgroundColor!],
        ),
      ),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}

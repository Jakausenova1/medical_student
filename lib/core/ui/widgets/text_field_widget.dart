import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';

import '../../theme/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
    final Widget? prefix;

  final TextEditingController? controller;
  const TextFieldWidget({
    required this.hintText,
    Key? key, this.controller, this.prefix,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white),
      child: TextField(
        controller: controller,
      
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
          filled: true,
          fillColor: AppColors.white,
          hintText: hintText,
          prefixIcon: prefix,
          labelStyle: AppFonts.w400s15,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class CategoryCards extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String image;
  const CategoryCards({
    Key? key,
    required this.bgColor,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(kDebugMode){
          print("Container clicked");
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        width: 155,
        height: 163,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(34),
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: [
              BoxShadow(
                  blurRadius: 50,
                  color: const Color(0xFF0B0C2A).withOpacity(.09),
                  offset: const Offset(10, 10))
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 16),
          Text(
            title,
            maxLines: 2,
            style: AppFonts.w500s18.copyWith(color: AppColors.white),
          ),
          Expanded(child: Image.asset(image)),
        ]),
      ),
    );
  }
}

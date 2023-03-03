import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';

class ChapSample extends StatelessWidget {
  const ChapSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(right: 80),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, bottom: 25, right: 20, top: 20),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppColors.white,
                  )
                ]),
                child: Text(
                  'Privet',
                  style: AppFonts.w400s14.copyWith(color: AppColors.grey),
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, bottom: 25, right: 20, top: 20),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppColors.purple2.withOpacity(0.6),
                  )
                ]),
                child: Text(
                  'Privet fhhfhfhhfhfhfhfh',
                  style: AppFonts.w400s14.copyWith(color: AppColors.grey),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

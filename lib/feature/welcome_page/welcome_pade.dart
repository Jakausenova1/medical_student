import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_images.dart';
import '../../core/ui/widgets/elevated_button.dart';
import '../login_page/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [AppColors.blue, AppColors.purple],
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 0,
            child: SizedBox(
              height: 416,
              width: 250,
              child: Image.asset(AppImages.bg),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topCenter,
            constraints: const BoxConstraints(maxWidth: 400),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 160,
                  ),
                  Text(
                    'MEDICAL STUDENT',
                    style: AppFonts.w900s32.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  Text(
                    'Добро \nпожаловать',
                    textAlign: TextAlign.center,
                    style: AppFonts.w900s32.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  AppElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const LoginPage())));
                    },
                    title: 'Войти',
                    backgroundColor: AppColors.white,
                    style: AppFonts.w700s20.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(height: 40,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

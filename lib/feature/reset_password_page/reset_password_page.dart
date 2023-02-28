import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_images.dart';
import 'package:odnajdyvkgma/core/ui/widgets/text_field_widget.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';
import '../../core/ui/widgets/elevated_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerConfirmPassword = TextEditingController();

  @override
  void dispose() {
    controllerName.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
    controllerConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.blobTop,
                fit: BoxFit.fitWidth,
              )),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 400),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 50),
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Регистрация',
                      style: AppFonts.w700s32.copyWith(color: AppColors.grey),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFieldWidget(
                      controller: controllerName,
                      hintText: 'Ваше имя',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextFieldWidget(
                      controller: controllerEmail,
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextFieldWidget(
                      controller: controllerPassword,
                      hintText: 'Пароль',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextFieldWidget(
                      controller: controllerConfirmPassword,
                      hintText: 'Подтвердить пароль',
                    ),
                    const SizedBox(
                      height: 49,
                    ),
                    AppElevatedButton(
                      onPressed: () {},
                      title: 'Регистрация',
                      style: AppFonts.w700s20.copyWith(color: AppColors.white),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

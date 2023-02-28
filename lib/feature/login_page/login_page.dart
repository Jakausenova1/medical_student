import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_images.dart';
import 'package:odnajdyvkgma/core/ui/widgets/text_field_widget.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';
import '../../core/ui/widgets/elevated_button.dart';
import '../registration_page/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
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
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Вход',
                      style: AppFonts.w700s32.copyWith(color: AppColors.grey),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFieldWidget(
                      controller: controllerEmail,
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      controller: controllerPassword,
                      hintText: 'Пароль',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              activeColor: AppColors.blue,
                              value: isChecked,
                              onChanged: (value) {
                                isChecked = !isChecked;
                                setState(() {});
                              },
                            ),
                            Text('Запомнить меня',
                                style: AppFonts.w500s14.copyWith(
                                  color: AppColors.black.withOpacity(0.6),
                                )),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Забыли пароль? ',
                              style: AppFonts.w500s14.copyWith(
                                color: AppColors.purple,
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    AppElevatedButton(
                      onPressed: () {},
                      title: 'Войти',
                      style: AppFonts.w700s20.copyWith(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Или войдите с помощью',
                      style: AppFonts.w400s14.copyWith(color: AppColors.grey),
                    ),
                    Container(
                      width: 120,
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: SizedBox(
                                width: 45,
                                height: 45,
                                child: Image.asset(AppImages.google, width: 33,height: 33,))),
                          InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: SizedBox(
                                width: 45,
                                height: 45,
                                child: Image.asset(AppImages.apple, width: 33,height: 33,))),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const RegistrationPage())));
                        },
                        child: Text(
                          'Зарегистрироваться',
                          style: AppFonts.w500s16.copyWith(
                            color: AppColors.purple,
                          ),
                        )),
                        const SizedBox(
                      height: 25,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

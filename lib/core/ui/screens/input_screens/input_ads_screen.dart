import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/theme/app_images.dart';

class InputAdsScreen extends StatefulWidget {
  const InputAdsScreen({super.key});

  @override
  State<InputAdsScreen> createState() => _InputAdsScreenState();
}

class _InputAdsScreenState extends State<InputAdsScreen> {
  final titleController = TextEditingController();
  final subTitleController = TextEditingController();
  final imageBGController = TextEditingController();
  final imageLogoController = TextEditingController();

  ImageProvider<Object> getImaageWigdet() {
    if (imageLogo != null) {
      return NetworkImage(
        imageLogo!,
      );
    } else {
      return const AssetImage(AppImages.adsEmptyLogo);
    }
  }

  DecorationImage? bgImageWidget(String? path) {
    if (bgImage != null) {
      return DecorationImage(
          image: NetworkImage(
            bgImage!,
          ),
          fit: BoxFit.cover);
    } else {
      return null;
    }
  }

  String? imageLogo;
  LinearGradient? gradient;
  Color? bgColor;
  String? bgImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 2,
              margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                image: bgImageWidget(bgImage),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.liberty),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: bgImage != null
                        ? AppColors.black.withOpacity(0.5)
                        : null,
                    borderRadius: BorderRadius.circular(7.73),
                    ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 43,
                              height: 43,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.73),
                                  color: AppColors.white,
                                  image: DecorationImage(
                                      image: getImaageWigdet(),
                                      fit: BoxFit.cover))),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                controller: subTitleController,
                                textAlign: TextAlign.right,
                                style: AppFonts.w400s14
                                    .copyWith(color: AppColors.white),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    hintText: "SubTitle",
                                    contentPadding: const EdgeInsets.all(2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColors.black.withOpacity(0.3),
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusColor: AppColors.black,
                                    //fillColor: AppColors.black.withOpacity(0.2),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColors.white.withOpacity(0.3),
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    enabledBorder: InputBorder.none),
                                maxLines: 3,
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: TextField(
                                controller: titleController,
                                textAlign: TextAlign.left,
                                style: AppFonts.w500s16
                                    .copyWith(color: AppColors.white),
                                maxLines: 2,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    hintText: "Title",
                                    contentPadding: const EdgeInsets.all(2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColors.black.withOpacity(0.3),
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusColor: AppColors.black,
                                    //fillColor: AppColors.black.withOpacity(0.2),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              AppColors.white.withOpacity(0.3),
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    enabledBorder: InputBorder.none),
                              ))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 67.39,
                            height: 13,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(3.86)),
                            child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Посмотреть",
                                  style: AppFonts.w400s8_69
                                      .copyWith(color: AppColors.liberty),
                                )),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(AppImages.saveIcon),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            const Text("Всавьте ссылку, для фона катры"),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: imageBGController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              bgImage = imageBGController.text;
              setState(() {
                
              });
            }, child: const Text("Загрузить")),
            const SizedBox(
              height: 30,
            ),
            const Text("Всавьте ссылку, для Логотипа катры"),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: imageLogoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
                
              ),
            ),
             const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              imageLogo = imageLogoController.text;
              setState(() {
                
              });
            }, child: const Text("Загрузить")),
          ],
        ),
      )),
    );
  }
}

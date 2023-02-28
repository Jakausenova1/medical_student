import 'dart:io';

import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/theme/app_images.dart';
import 'package:odnajdyvkgma/models/model_card_slider.dart';

class AppSliderItem extends StatelessWidget {
  const AppSliderItem({super.key, this.onTapLook, this.onTapSave, required this.model, this.width = 233, this.height = 132, this.fileImage, this.fileImageLogo});
  final ModelCardSlider model;
  final double width;
  final double height;
  final File? fileImage;
  final File? fileImageLogo;
  final Function()? onTapLook;
  final Function()? onTapSave;


  ImageProvider<Object> getImaageWigdet() {
    if(fileImageLogo!=null){
      return FileImage(fileImageLogo!);
    }else
    if (model.imageLogo != null) {
      return NetworkImage(
        model.imageLogo!,
      );
    } else {
      return const AssetImage(AppImages.adsEmptyLogo);
    }
  }

  DecorationImage? bgImageWidget(String? path){
    if(fileImage!=null){
      return DecorationImage(image:  FileImage(fileImage!),fit: BoxFit.cover, );
    }else if(path!=null){
      return DecorationImage(image: NetworkImage(
        path,
      ),fit: BoxFit.cover);
      
    }else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final gradient = model.gradientBackground;
    final bgColor = model.colorBackground;
    final bgImage = model.imageBackground;
    return Container(
      width: 233,
      height: 132,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient:bgImage!=null?null: gradient,
          color: gradient!=null? null: bgColor, 
          image: bgImageWidget(bgImage, ),
          borderRadius: BorderRadius.circular(7.73)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgImage!=null? AppColors.black.withOpacity(0.5): null,
          borderRadius: BorderRadius.circular(7.73)),
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
                          image: getImaageWigdet(), fit: BoxFit.cover))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    model.deadlineText,
                    textAlign: TextAlign.right,
                    style: AppFonts.w400s11.copyWith(color: model.textColor),
                    maxLines: 3,
                  ),
                ),
              )
            ],
          )
        , 
        Expanded(child: Container(
          alignment: Alignment.centerLeft,
          child: Text(model.title, textAlign: TextAlign.left, style: AppFonts.w500s14.copyWith(color: model.textColor),maxLines: 2,))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width:67.39 ,
              height: 13,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(3.86)
              ),
              child: InkWell(
                onTap: onTapLook,
                child: Text("Посмотреть", style: AppFonts.w400s8_69.copyWith(color: AppColors.liberty),)),
                
            ),
            InkWell(
                  onTap: onTapSave,
                  child: Image.asset(AppImages.saveIcon),
                )
          ],
        )
        ]),
      ),
    );
  }
}

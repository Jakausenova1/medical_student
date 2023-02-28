import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/ui/widgets/items/app_slider_item.dart';
import 'package:odnajdyvkgma/models/model_card_slider.dart';

class AppSliderWidget extends StatelessWidget {
  const AppSliderWidget({super.key, required this.list});
  final List<ModelCardSlider> list;
  
  @override
  Widget build(BuildContext context) {
    const ScrollPhysics physics = BouncingScrollPhysics();
    final ScrollPhysics mergedPhysics = physics.applyTo(const AlwaysScrollableScrollPhysics());
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
            height: 5,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Популярное",
                  style: AppFonts.w600s15.copyWith(color: AppColors.grey1),
                ),
                TextButton(
                    onPressed: () {
                      //TODO ОТКРЫТЬ СТРАНИЦУ, который содержит все с этой категории!
                    },
                    child: Text(
                      "Все",
                      style: AppFonts.w600s15.copyWith(
                        color: AppColors.liberty,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ],
            ),
        ),
        SizedBox(
          width: double.infinity,
          height: 157,
          child: PageView.builder(
              controller: PageController(viewportFraction: 0.70, initialPage: 0),
              physics: mergedPhysics,
              padEnds: false,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index==0?5:0 ,right: index==list.length?5:0 , bottom: 15),
                  child: AppSliderItem(
                    model: list[index],
                    onTapLook: () {
                      // TODO ОТКРЫТЬ СТРАНИЦУ "детальной информацию"
                    },
                    onTapSave: () {
                      // TODO СОХРОНЯТЬ К СЕБЕ ПРИ НАЖАТИИ
                    },
                  ),
                );
              }),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/theme/app_images.dart';
import 'package:odnajdyvkgma/feature/categories_page.dart/models/category_models.dart';
import '../../core/theme/app_colors.dart';
import '../../core/ui/widgets/category_card.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

List<CategoryModels> data = [
  CategoryModels(
    image: AppImages.test,
    title: "Тест",
    bgColor: AppColors.blue,
  ),
  CategoryModels(
    image: AppImages.analizy,
    title: "Анализы",
    bgColor: AppColors.orange,
  ),
  CategoryModels(
    image: AppImages.srs,
    title: "СРС",
    bgColor: AppColors.purple,
  ),
  CategoryModels(
    image: AppImages.recept,
    title: "Рецепты",
    bgColor: AppColors.green,
  ),
  CategoryModels(
    image: AppImages.job,
    title: "Вакансии",
    bgColor: AppColors.orange,
  ),
  CategoryModels(
    image: AppImages.uchebniki,
    title: "Литература",
    bgColor: AppColors.blue,
  ),
];

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    const ScrollPhysics physics = BouncingScrollPhysics();
    final ScrollPhysics mergedPhysics = physics.applyTo(const AlwaysScrollableScrollPhysics());
    Size size = MediaQuery.of(context).size;

    return  Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 40),
      decoration: const BoxDecoration(
        color: AppColors.purple2,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Text(
              'Категории',
              style: AppFonts.w700s25.copyWith(color: AppColors.white),
            ),
          ),

          Container(
              width: double.infinity,
              height: size.height-130,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(34), topRight: Radius.circular(34))),
              child: GridView.builder(              
              //Жака всегда проверяй Виджета, у него есть свой Padding или нет)
              padding: const EdgeInsets.all(12),
              physics: const ClampingScrollPhysics(),
              itemCount: data.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CategoryCards(
          bgColor: data[index].bgColor,
          image: data[index].image,
          title: data[index].title,
                );
              },
              ),
            ),
        ],
      ),
    );
  }
}

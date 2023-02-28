import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/ui/widgets/app_slider_widget.dart';
import 'package:odnajdyvkgma/core/ui/widgets/items/news_item.dart';
import 'package:odnajdyvkgma/models/model_card_slider.dart';
import 'package:odnajdyvkgma/models/model_news_item.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<ModelCardSlider> listSlider = [
    ModelCardSlider(
      deadlineText: "Расписание занятий\nПн-Сб. с 07:30 до 20:00",
      title: 'Онлайн курсы английского языка в Бишкеке',
      contentText: 'contentText',
      category: 'category',
      imageLogo:
          'https://i.pinimg.com/originals/2c/fa/6b/2cfa6bc988e66e056b0c9d368bb5cb05.jpg',
    ),
    ModelCardSlider(
        deadlineText:
            "HeadHunter (headhunter.kg)\nместо, где работа найдётся всегда!",
        title:
            'Работа — важная часть жизни каждого из нас. Однако в жизни каждого человека наступает момент, когда он задумывается о смене работы, а может быть, даже и сферы деятельности. Увы, перемены — это не всегда легко, поэтому сомнения неизбежны.',
        contentText: 'contentText',
        category: 'category',
        imageLogo:
            'https://upload.wikimedia.org/wikipedia/commons/7/79/HeadHunter_logo.png',
        imageBackground:
            'https://sputnik.kg/img/104894/74/1048947483_0:0:2400:1508_1920x0_80_0_0_b23750156e20a3987662a6bfdf0a1204.jpg'),
    ModelCardSlider(
        deadlineText: "deadlineText\n20.05.2023",
        title: 'Стажировка в Германии',
        contentText: 'contentText',
        category: 'category',
        gradientBackground:
            const LinearGradient(colors: [Colors.green, Colors.blueGrey])),
  ];
  final model = ModelNews(
      uid: "uid",
      name: "name",
      email: "email",
      title: 'Лекарственно-индуцированный дефицит электролитов.',
      contentText:
          'Участие микро- и макроэлементов  физиологических процессах организма многогранно: микроэлемент.....',
      category: 'category',
      images: [
        'https://skkdkb.ru/assets/images/Patsientam/Inf-dlya-roditelej/Tradition-nontradition-medicine/traditionalNonTraditionalMedicine.jpg',
        'https://m.ridus.ru/images/2017/12/13/712245/in_article_0c5dd49115.jpg'
      ],
      visible: true,
      date: '21.05.2023',
      like: 5);

  List<ModelNews> newsList = [ModelNews(
      uid: "uid",
      name: "name",
      email: "email",
      title: 'Лекарственно-индуцированный дефицит электролитов.',
      contentText:
          'Участие микро- и макроэлементов  физиологических процессах организма многогранно: микроэлемент.....',
      category: 'category',
      images: [
        'https://www.iguides.ru/upload/medialibrary/9f8/9f8fdff471b7d281f81f694c100b5adc.png',
        'https://spbmiac.ru/wp-content/uploads/2018/08/citugroup_1.jpg',
        'https://m.ridus.ru/images/2017/12/13/712245/in_article_0c5dd49115.jpg'
      ],
      visible: true,
      date: '21.05.2023',
      like: 5),ModelNews(
      uid: "uid",
      name: "name",
      email: "email",
      title: 'Лекарственно-индуцированный дефицит электролитов.',
      contentText:
          'Участие микро- и макроэлементов  физиологических процессах организма многогранно: микроэлемент.....',
      category: 'category',
      images: [
        'https://skkdkb.ru/assets/images/Patsientam/Inf-dlya-roditelej/Tradition-nontradition-medicine/traditionalNonTraditionalMedicine.jpg',
        'https://jnj.ru/wp-content/uploads/2018/04/Depositphotos_65281749_m-2015_833_512.jpg'
      ],
      visible: true,
      date: '21.05.2023',
      like: 5),ModelNews(
      uid: "uid",
      name: "name",
      email: "email",
      title: 'Лекарственно-индуцированный дефицит электролитов.',
      contentText:
          'Участие микро- и макроэлементов  физиологических процессах организма многогранно: микроэлемент.....',
      category: 'category',
      images: [
        'https://www.meme-arsenal.com/memes/186cc4dc2b461cbc5c471afed0881093.jpg',
        'https://skkdkb.ru/assets/images/Patsientam/Inf-dlya-roditelej/Tradition-nontradition-medicine/traditionalNonTraditionalMedicine.jpg',
        'https://m.ridus.ru/images/2017/12/13/712245/in_article_0c5dd49115.jpg'
      ],
      visible: true,
      date: '21.05.2023',
      like: 5)];
  
  
  @override
  Widget build(BuildContext context) {
    const ScrollPhysics physics = BouncingScrollPhysics();
    final ScrollPhysics mergedPhysics = physics.applyTo(const AlwaysScrollableScrollPhysics());
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
          Container(
            width: double.infinity,
            height: 45.55,
      
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 0.3, color: AppColors.black.withOpacity(0.2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.search,
                  color: AppColors.grey2,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Поиск",
                  style: AppFonts.w400s14.copyWith(color: AppColors.grey2),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: mergedPhysics,
              shrinkWrap: true,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
              return index == 0
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppSliderWidget(list: listSlider),
                        NewsItem(modelNews: newsList[index])
                      ],
                    )
                  : NewsItem(modelNews: newsList[index]);
            }),
          ),
        ]),
      ),
    );
  }
}

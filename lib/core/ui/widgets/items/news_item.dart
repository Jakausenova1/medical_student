import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/theme/app_svg.dart';
import 'package:odnajdyvkgma/models/model_news_item.dart';
import 'package:shimmer/shimmer.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({super.key, required this.modelNews});
  final ModelNews modelNews;

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  int _current = 0;

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final model = widget.modelNews;
    final width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        margin: const EdgeInsets.only(left: 12, right: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            height: width * 0.5,
            child: Builder(builder: (context) {             
              return Stack(alignment: Alignment.bottomCenter, children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: model.images.length,
                      onPageChanged: (index) {
                        _current = index;
                        (context as Element).markNeedsBuild();
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(index == 0 ? 10 : 0),
                              bottomLeft: Radius.circular(index == 0 ? 10 : 0),
                              topRight: Radius.circular(
                                  index + 1 == model.images.length ? 10 : 0),
                              bottomRight: Radius.circular(
                                  index + 1 == model.images.length ? 10 : 0)),
                          child: Image.network(
                            model.images[index],
                            frameBuilder: (BuildContext context, Widget child,
                                int? frame, bool wasSynchronouslyLoaded) {
                              if (wasSynchronouslyLoaded) {
                                return child;
                              }
                              return AnimatedOpacity(
                                opacity: frame == null ? 0 : 1,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeOut,
                                child: child,
                              );
                            },
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return Container(
                                width: width,
                                height: width / 2,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.9),
                                ),
                                child: const Icon(
                                  Icons.image,
                                  color: AppColors.lightGrey,
                                ),
                              );
                            },
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: Container(
                                    width: width,
                                    height: width / 2,
                                    decoration:
                                        const BoxDecoration(color: Colors.white),
                                  ));
                            },
                            height: width / 2,
                            width: width,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  child: Container(
                    height: 13,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: model.images.length,
                        itemBuilder: (context, index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 2),
                              child: model.images.length == 1
                                  ? const SizedBox()
                                  : Icon(
                                      _current == index
                                          ? Icons.lens
                                          : Icons.lens_outlined,
                                      color: AppColors.lightGrey,
                                      size: _current == index ? 8.5 : 5,
                                    ),
                            ),
                          );
                        }),
                  ),
                ),
              ]);
            }),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
                  splashRadius: 20,
                  splashColor: Colors.transparent,
                  padding: const EdgeInsets.all(5),
                  onPressed: () {
                    //TODO При нажатий ЛАЙКА, оброботать фукцию
                  },
                  icon: SvgPicture.asset(AppSvg.likeOutline)),
              IconButton(
                  constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
                  padding: const EdgeInsets.all(5),
                  splashRadius: 20,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    //TODO При нажатий КОММЕНТА, оброботать фукцию


                  },
                  icon: SvgPicture.asset(
                    AppSvg.msg,
                    colorFilter:
                        const ColorFilter.mode(AppColors.liberty, BlendMode.srcATop),
                  )),
              IconButton(
                  constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
                  padding: const EdgeInsets.all(5),
                  splashRadius: 20,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    //TODO При нажатий ПОДЕЛИТЬСЯ, оброботать фукцию


                  },
                  icon: SvgPicture.asset(AppSvg.shareOutline)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '${model.title}',
            style: AppFonts.w500s17.copyWith(color: AppColors.grey1),
            maxLines: 3,
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '${model.contentText}',
            style: AppFonts.w400s12.copyWith(color: AppColors.grey1),
            maxLines: 3,
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${model.date}',
            style: AppFonts.w400s12.copyWith(color: AppColors.liberty),
            maxLines: 3,
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 25,
          ),
        ]));
  }
}

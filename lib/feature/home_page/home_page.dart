import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/ui/screens/home/news_screen.dart';
import 'package:odnajdyvkgma/core/ui/widgets/app_bottom_nav_bar.dart';
import 'package:odnajdyvkgma/core/ui/widgets/bottom_sheet/sheet_general_widget.dart';
import 'package:odnajdyvkgma/feature/categories_page.dart/categories.dart';
import 'package:odnajdyvkgma/feature/chat_page/one_chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int initPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: initPage == 0? const NewsScreen(): initPage == 1? const CategoryPage(): initPage == 2? ChatPage(): const SizedBox(),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
              ),
              backgroundColor: AppColors.white,
              isScrollControlled: true,
              context: context,
              builder: (_) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const SheetGeneralWidget(),
                  ));
        },
        child: Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: AppColors.liberty),
          child: const Icon(
            Icons.add,
            size: 35,
            color: AppColors.white,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar:  AppBottomNavBar(initPage: initPage, selectItem: (page){ setState(() {
        initPage = page;
      });},),
    );
  }
}

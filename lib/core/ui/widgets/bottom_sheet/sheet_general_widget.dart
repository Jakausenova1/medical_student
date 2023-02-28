import 'package:flutter/material.dart';

import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/core/theme/app_fonts.dart';
import 'package:odnajdyvkgma/core/ui/screens/input_screens/input_ads_screen.dart';
import 'package:odnajdyvkgma/util/list_util.dart';

class SheetGeneralWidget extends StatelessWidget {
  const SheetGeneralWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              width: 100,
              height: 6,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.liberty),
             ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.only(left: 45, right: 40),
            itemCount: sheetGeneralList().length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index == 0
                          ? Container()
                          : Container(
                              margin: const EdgeInsets.only(top: 1, bottom: 2),
                              width: 200,
                              height: 3,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColors.lightGrey),
                            ),
                      InkWell(
                        onTap: (){
                          if(index==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const InputAdsScreen()));
                          }

                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Text(
                            sheetGeneralList()[index],
                            style: AppFonts.w600s15
                                .copyWith(color: AppColors.black),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ));
            },
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}

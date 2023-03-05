import 'package:flutter/material.dart';
import 'package:skies_cue/app/style/app_spacing.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_pref/pref_manager.dart';
import '../../../style/app_color.dart';
import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class SingleListItemWidget extends StatelessWidget {
  const SingleListItemWidget(
      {Key? key, required this.controller, required this.index})
      : super(key: key);
  final HomeController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.greyLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.homeListItemBgSize),
      ),
      child: MaterialButton(
        onPressed: () {
          controller.navigateToDetailPage(
              controller, controller.regionList[index].region);
        },
        child: Container(
            padding: const EdgeInsets.only(
                top: AppSpacing.small, bottom: AppSpacing.small),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.regionList[index].name,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(controller.regionList[index].division,
                          style:
                              TextStyle(fontSize: 12, color: AppColor.greyDark))
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right),
                const SizedBox(
                  width: 32,
                )
              ],
            )),
      ),
    );
  }
}

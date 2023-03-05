import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:skies_cue/app/modules/home/widget/single_list_item_widget.dart';
import 'package:skies_cue/app/shared_pref/pref_manager.dart';
import 'package:skies_cue/app/style/app_spacing.dart';
import 'package:skies_cue/app/utilities/constant.dart';
import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../style/app_color.dart';
import 'home_primary_view.dart';

class HomeViewLandscape extends StatelessWidget {
  const HomeViewLandscape({Key? key, required this.controller})
      : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: HomePrimaryView(key: key, controller: controller),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.only(
                            left: AppSpacing.pageSideMargin,
                            right: AppSpacing.pageSideMargin,
                            top: 8,
                            bottom: 8),
                        child: SingleListItemWidget(
                            key: key, controller: controller, index: index),
                      );
                    },
                    childCount: controller.regionList.length, // 1000 list items
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

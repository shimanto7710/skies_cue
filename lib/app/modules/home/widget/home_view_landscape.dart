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

class HomeViewLandscape extends StatelessWidget {
  const HomeViewLandscape({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: Get.height,
                      color: AppColor.primaryColor,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            Constant.yourLocationNow,
                            style: TextStyle(color: AppColor.grey, fontSize: 12),
                          ),
                          Text(
                            controller.currentWeatherModel.value.request?.query ??
                                Constant.notFound,
                            style: const TextStyle(
                                color: AppColor.white, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                AppSpacing.homeWeatherImageSizeLandscape),
                            child: Image.network(
                              fit: BoxFit.cover,
                              controller.currentWeatherModel.value.current
                                  ?.weatherIcons?[0] ??
                                  Constant.notFound,
                              height: AppSpacing.homeWeatherImageSizeLandscape,
                              width: AppSpacing.homeWeatherImageSizeLandscape,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            decoration: const BoxDecoration(
                                color: AppColor.lightBlue,
                                borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                            child: Text(
                              controller.currentWeatherModel.value.current
                                  ?.weatherDescriptions?[0] ??
                                  Constant.notFound,
                              style: const TextStyle(
                                  color: AppColor.white, fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "${controller.currentWeatherModel.value.current?.temperature ?? Constant.notFound} ${(controller.currentWeatherModel.value.request?.unit == Constant.celsiusUnit ? Constant.celsius : Constant.fahrenheit)}",
                            style: const TextStyle(
                                color: AppColor.white,
                                fontSize: 56,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                // Get.delete<HomeController>();
                                controller.navigateToDetailPage(
                                    controller,
                                    controller.currentWeatherModel.value.request
                                        ?.query ??
                                        Constant.region);
                              },
                              child: Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.blueAccent)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        Constant.seeDetails,
                                        style: TextStyle(
                                            color: AppColor.white, fontSize: 12),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: AppColor.white,
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          /* Container(width: Get.width, color: AppColor.white, height: 0.5,),
                                const SizedBox(
                                  height: 30,
                                ),*/
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: FloatingActionButton(
                          backgroundColor: AppColor.lightBlue,
                          onPressed: controller.changeUnit,
                          child: Text(
                            (controller.currentWeatherModel.value.request?.unit ==
                                Constant.celsiusUnit
                                ? Constant.fahrenheit
                                : Constant.celsius),
                            style: const TextStyle(
                                color: AppColor.white, fontSize: 32),
                          ),
                        ))
                  ],
                ),
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
                            top: 8, bottom: 8),
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
    ));
  }
}

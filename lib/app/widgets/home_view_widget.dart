import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:skies_cue/app/utilities/constant.dart';
import '../modules/home/controllers/home_controller.dart';
import '../style/app_color.dart';

class HomeViewWidget extends StatelessWidget {
  HomeViewWidget({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;

/*  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;*/

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              Container(
                width: Get.width,
                color: AppColor.primaryColor,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      Constant.yourLocationNow,
                      style: TextStyle(color: AppColor.grey, fontSize: 12),
                    ),
                    Text(
                      controller.currentWeatherModel.value.request?.query ??
                          Constant.notFound,
                      style:
                          const TextStyle(color: AppColor.white, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(120.0),
                      child: Image.network(
                        fit: BoxFit.cover,
                        controller.currentWeatherModel.value.current
                                ?.weatherIcons?[0] ??
                            Constant.notFound,
                        height: 120.0,
                        width: 120.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        height: 25,
                        width: 120,
                        alignment: Alignment.center,
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
                        onTap: () {},
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
                      style:
                          const TextStyle(color: AppColor.white, fontSize: 32),
                    ),
                  ))
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                child: Card(
                  elevation: 0,
                  color: AppColor.greyLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                        height: 80,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 60),
                            Column(
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
                                    style: TextStyle(
                                        fontSize: 12, color: AppColor.greyDark))
                              ],
                            ),
                            const Spacer(),
                            const Icon(Icons.keyboard_arrow_right),
                            const SizedBox(
                              width: 32,
                            )
                          ],
                        )),
                  ),
                ),
              );
            },
            childCount: controller.regionList.length, // 1000 list items
          ),
        ),
      ],
    );
  }
}

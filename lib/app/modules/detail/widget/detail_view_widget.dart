import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../style/app_color.dart';
import '../../../utilities/constant.dart';
import '../controllers/detail_controller.dart';
import 'detail_card_view.dart';




class DetailPageWidget extends StatelessWidget {
  const DetailPageWidget({Key? key, required this.controller})
      : super(key: key);
  final DetailController controller;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Card(
          elevation: 0,
          color: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.only(
                left: 30, top: 30, right: 30, bottom: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          fit: BoxFit.cover,
                          controller.currentWeatherModel.value.current
                              ?.weatherIcons?[0] ??
                              Constant.notFound,
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          controller.currentWeatherModel.value.current
                              ?.weatherDescriptions?[0] ??
                              Constant.notFound,
                          style: const TextStyle(
                              fontSize: 24, color: AppColor.white),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.only(left: 12, top: 5),
                        child: Text(
                          controller.currentWeatherModel.value
                              .location!.localtime!
                              .split(" ")![1],
                          style: const TextStyle(
                              fontSize: 16, color: AppColor.white),
                        ),
                      )
                    ]),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                      const EdgeInsets.only(right: 10, top: 15),
                      child: Text(
                        "${controller.currentWeatherModel.value.current?.temperature ?? Constant.notFound} ${(controller.currentWeatherModel.value.request?.unit == Constant.celsiusUnit ? Constant.celsius : Constant.fahrenheit)}",
                        style: const TextStyle(
                            color: AppColor.white,
                            fontSize: 56,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 25, top: 5, left: 8),
                      child: Text(
                        "Feels like ${controller.currentWeatherModel.value.current?.feelslike ?? Constant.notFound} ${(controller.currentWeatherModel.value.request?.unit == Constant.celsiusUnit ? Constant.celsius : Constant.fahrenheit)}",
                        style: const TextStyle(
                            color: AppColor.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: controller.setDefaultRegion,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.blueAccent)),
                          child: const Text(
                            Constant.setAsDefault,
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),),
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  DetailCardView(
                      key: key,
                      leftKey: Constant.windSpeed,
                      leftValue:
                          "${controller.currentWeatherModel.value.current?.windSpeed.toString() ?? Constant.notFound} m/h",
                      rightKey: Constant.windDegree,
                      rightValue:
                          "${controller.currentWeatherModel.value.current?.windDegree.toString() ?? Constant.notFound} ${controller.currentWeatherModel.value.current?.windDir.toString() ?? Constant.notFound}"),
                  DetailCardView(
                      key: key,
                      leftKey: Constant.pressure,
                      leftValue: controller
                              .currentWeatherModel.value.current?.pressure
                              .toString() ??
                          Constant.notFound,
                      rightKey: Constant.humidity,
                      rightValue: controller
                              .currentWeatherModel.value.current?.humidity
                              .toString() ??
                          Constant.notFound),
                  DetailCardView(
                      key: key,
                      leftKey: Constant.cloudCover,
                      leftValue: controller
                              .currentWeatherModel.value.current?.cloudcover
                              .toString() ??
                          Constant.notFound,
                      rightKey: Constant.visibility,
                      rightValue: controller
                              .currentWeatherModel.value.current?.visibility
                              .toString() ??
                          Constant.notFound),
                ],
              )),
        ),
      ],
    );
  }
}
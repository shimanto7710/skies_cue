import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../style/app_color.dart';
import '../../../style/app_spacing.dart';
import '../../../utilities/constant.dart';
import '../controllers/home_controller.dart';

class HomePrimaryView extends StatelessWidget {
  const HomePrimaryView({Key? key,required this.controller}) : super(key: key);
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
      children: [
        Container(
          width: Get.width,
          color: AppColor.primaryColor,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Wrap(
                children: [
                  Text(
                    Constant.yourLocationNow,
                    style: TextStyle(color: AppColor.grey, fontSize: 12),
                  ),
                ],
              ),
              Wrap(
                children: [
                  Text(
                    controller.currentWeatherModel.value.request?.query ??
                        Constant.notFound,
                    style: const TextStyle(
                        color: AppColor.white, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    AppSpacing.homeWeatherImageSize),
                child: Image.network(
                  fit: BoxFit.cover,
                  controller.currentWeatherModel.value.current
                      ?.weatherIcons?[0] ??
                      Constant.notFound,
                  height: AppSpacing.homeWeatherImageSize,
                  width: AppSpacing.homeWeatherImageSize,
                ),
              ),
              const SizedBox(
                height: 15,
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
    ));
  }
}

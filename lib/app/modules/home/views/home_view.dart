import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:skies_cue/app/style/app_color.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import '../../../widgets/custom_error.dart';
import '../widget/home_view_landscape.dart';
import '../widget/home_view_portrait.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: AppColor.primaryColor, // status bar color
    ));
    return Scaffold(
      body: OrientationBuilder(builder: (BuildContext context, Orientation orientation){
        return GetX<HomeController>(
          builder: (HomeController controller) {
            if (controller.apiState.value == AppState.loading.name) {
              return const Center(child: CircularProgressIndicator());
            } else if (controller.apiState.value == AppState.loaded.name) {
              if(orientation==Orientation.portrait){
                return HomeViewLandscape(
                  key: key,
                  controller: controller,
                );
              }else {
                return HomeViewLandscape(key: key, controller: controller,);
              }

            } else {
              return CustomError(
                key: key,
                summary: controller.errorText.value,
                onReload: controller.onReload,
              );
            }
          },
        );
      },),
    );
  }
}

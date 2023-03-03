import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:skies_cue/app/style/app_color.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import '../../../widgets/custom_error.dart';
import '../../../widgets/home_view_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: AppColor.primaryColor, // status bar color
    ));
    return Scaffold(body: GetX<HomeController>(builder: (_) {
      if (controller.apiState.value == AppState.loading.name) {
        return const Center(child: CircularProgressIndicator());
      } else if (controller.apiState.value == AppState.loaded.name) {
        return HomeViewWidget(
          key: key,
          controller: controller,
        );
      } else {
        return CustomError(
          key: key,
          summary: controller.errorText.value,
          onReload: controller.onReload,
        );
      }
    }));
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import '../../../widgets/custom_error.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Constant.homeTitle),
          centerTitle: true,
        ),
        body: GetX<HomeController>(builder: (_) {
          if (controller.apiStatus.value == AppState.loading.name) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.apiStatus.value == AppState.loaded.name) {
            return const Center(
              child: Text("successful "),
            );
          } else {
            return CustomError(
              key: key,
              summary: controller.errorText.value,
            );
          }
          /*switch (controller.apiStatus.value) {
            case AppState.loading.name:
              return const Center(child: CircularProgressIndicator());
            case "loaded":
              return const Center(
                child: Text("successful "),
              );
            default:
              return CustomError(
                key: key,
                summary: controller.errorText.value,
              );
          }*/
        }));
  }
}

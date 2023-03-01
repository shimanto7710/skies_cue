import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skies_cue/app/utilities/constant.dart';

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
          switch (controller.isDataFetched.value) {
            case 0:
              return const Center(child: CircularProgressIndicator());
            case 1:
              return const Center(
                child: Text("successful "),
              );
            default:
              return Center(child: Text(controller.errorText.value));
          }
        }));
  }
}

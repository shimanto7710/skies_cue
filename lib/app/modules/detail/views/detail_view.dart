import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../style/app_color.dart';
import '../../../utilities/constant.dart';
import '../../../widgets/custom_error.dart';
import '../controllers/detail_controller.dart';
import '../widget/detail_view_widget.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: AppColor.primaryColor, // status bar color
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.selectedRegion),
        backgroundColor: AppColor.primaryColor,
      ),
      body: OrientationBuilder(builder: (BuildContext context, Orientation orientation){
        return RefreshIndicator(
          onRefresh: () async => controller.onReload(),
          child: GetX<DetailController>(
            builder: (_) {
              if (controller.apiState.value == AppState.loading.name) {
                return const Center(child: CircularProgressIndicator());
              } else if (controller.apiState.value == AppState.loaded.name) {
                return DetailPageWidget(
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
            },
          ),
        );
      },)
    );
  }
}

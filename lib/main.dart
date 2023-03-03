import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: Constant.appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

    ),
  );
}

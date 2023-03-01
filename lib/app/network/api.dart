
import 'package:dio/dio.dart';
import 'package:skies_cue/app/utilities/constant.dart';

import 'intercepter.dart';

class Api {

  final dio = createDio();

  Api._internal();
  static final _singleton = Api._internal();
  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: Constant.baseUrl,
      receiveTimeout: const Duration(seconds: 15), // 15 seconds
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
    ));

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });
    return dio;
  }
}
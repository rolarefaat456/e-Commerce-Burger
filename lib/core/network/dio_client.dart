import 'package:dio/dio.dart';
import 'package:hungry/core/constans/api_end_points.dart';
import 'package:hungry/core/utils/pref_helper.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl:
          baseUrl, // keda adytha el baseUrl 3la el dio kolha bdl ma ab3to kol shwya
      headers: {
        "Content-Type": 'application/json',
      }, // keda adytha el headers 3la el dio kolha bdl ma ab3to kol shwya
    ),
  );

  DioClient() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest:
            (
              options,
              handler,
            ) // keda b2olw w ana bb3t el token asna2 el atsal m3 el server
            async {
              final token = await PrefHelper.getToken();
              if (token != null && token.isNotEmpty) {
                options.headers['Authorization'] = 'Bearer $token';
              }
              return handler.next(options);
            },
      ),
    );
  }

  Dio get dio => _dio; // 3mlna getter 3lhan nwslo mn kol mkan by sehwla
}

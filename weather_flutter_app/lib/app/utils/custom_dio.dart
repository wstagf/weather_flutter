import 'package:dio/dio.dart';
import '../../environments/env.dart';

class CustomDio {
  Dio _dio;

  CustomDio() {
    _dio = Dio(_options);
  }

  CustomDio.whithAutentication() {
    _dio = Dio(_options);
    _dio.interceptors.add(InterceptorsWrapper(
        onRequest: _onRequest, onResponse: _onResponse, onError: _onError));
  }

  Dio get instance => _dio;

  _onRequest(RequestOptions options) async {
    options.path = options.path + "?&token=${token}";
    print(options.path);
  }

  _onError(DioError e) {
    print('####### Error Log');
    print(e);
    print('####### Error Log');
    if (e.response?.statusCode == 403 || e.response?.statusCode == 401) {
      //TODO Implementar erro
    }
  }

  _onResponse(Response e) {
    print('####### Response Log');
    print(e);
    print('####### Response Log');
  }

  BaseOptions _options = BaseOptions(
    baseUrl: urlBase,
    connectTimeout: 30000,
    receiveTimeout: 30000,
  );
}

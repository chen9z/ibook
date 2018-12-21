import 'package:dio/dio.dart';

class DioManager {
  Dio getInstance(String url) {
    Options options = new Options(
        connectTimeout: 5000,
        receiveTimeout: 3000,
        headers: {"User-Agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36"});
    return new Dio(options);
  }
}

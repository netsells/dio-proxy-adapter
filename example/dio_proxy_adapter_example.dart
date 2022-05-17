import 'package:dio/dio.dart';
import 'package:dio_proxy_adapter/dio_proxy_adapter.dart';

void main() {
  var dio = Dio();
  dio.useProxy(String.fromEnvironment('PROXY_URL'));
}

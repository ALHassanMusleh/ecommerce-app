import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioUtils {
  Dio getInstance() {
    final options = BaseOptions(
      baseUrl: 'https://ecommerce.routemisr.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    return Dio(options);
  }
}

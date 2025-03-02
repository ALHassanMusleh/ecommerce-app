import 'package:ecommerce_app/core/utils/app_error.dart';
import 'package:either_dart/either.dart';

abstract class AuthRepo {
  Future<Either<Failure, void>> login(String email,String password);
  void register();
}

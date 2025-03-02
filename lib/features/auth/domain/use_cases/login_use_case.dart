import 'package:ecommerce_app/core/utils/app_error.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  AuthRepo authRepo;
  LoginUseCase(this.authRepo);
  Future<Either<Failure, void>> execute(String email, String password) {
    return authRepo.login(email, password);
  }
}

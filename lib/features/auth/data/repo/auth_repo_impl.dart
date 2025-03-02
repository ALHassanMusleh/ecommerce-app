import 'package:ecommerce_app/core/resources/constants_manager.dart';
import 'package:ecommerce_app/core/utils/app_error.dart';
import 'package:ecommerce_app/features/auth/data/data_source/remote_data_source.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl extends AuthRepo {
  RemoteDataSource remoteDataSource;
  AuthRepoImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, void>> login(String email, String password) async {
    bool isConnected = await InternetConnectionChecker.instance.hasConnection;
    if (isConnected) {
      return remoteDataSource.login(email, password);
    } else {
      return Left(ConnectionFailure(AppConstants.internetErrorMessage));
    }
  }

  @override
  void register() {
    // TODO: implement register
  }
}

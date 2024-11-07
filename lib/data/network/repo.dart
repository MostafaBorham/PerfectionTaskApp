import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:perfection_task/core/constants/app_keys.dart';
import 'package:perfection_task/domains/models/user_model.dart';
import '../../core/connection/connection_checker.dart';
import '../../core/constants/network_constants.dart';
import '../../core/errors/failures.dart';
import '../../core/services/network/dio_service.dart';

abstract class NetworkRepo {
  static Future<Either<Failure, List<UserModel>>> getAllUsers({int? page=1}) async {
    if (await ConnectionChecker.isConnected) {
      try {
        final usersResponse = await DioService.getUserData(
            params: {
              AppKeys.pageKey : page,
            },);
        if (usersResponse.statusCode != NetworkConstants.successStatusCode) {
          return Left(Failure(message: usersResponse.statusMessage));
        }

        final usersListJson= usersResponse.data[AppKeys.dataKey];
        ///Parse Step
        final usersList = usersListJson.map<UserModel>(
          (userJson) {
            return UserModel.fromJson(userJson);
          },
        ).toList();
        return Right(usersList);
      } on DioException catch (_) {
        return Left(ServerFailure());
      } catch (ex) {
        return Left(Failure(message: ex.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}

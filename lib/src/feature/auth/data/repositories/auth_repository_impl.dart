import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/remote/remote_auth_datasource.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_response_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LocalAuthDatasource localAuthRepository;
  final RemoteAuthDatasource remoteAuthRepository;

  AuthRepositoryImpl({
    required this.localAuthRepository,
    required this.remoteAuthRepository,
  });

  @override
  Future<LoginResponseDto> login(LoginRequestDto dto) async {
    return await remoteAuthRepository.login(dto);
  }

  @override
  Future<void> saveToken(String token) async {
    await localAuthRepository.saveUserToken(token);
  }

  @override
  Future<String?> getToken() async {
    return await localAuthRepository.getUserToken();
  }

  @override
  Future<void> deleteToken() async {
    await localAuthRepository.deleteUserToken();
  }
}

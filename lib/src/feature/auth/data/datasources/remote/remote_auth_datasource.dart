import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_response_dto.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'remote_auth_datasource.g.dart';

@RestApi()
abstract class RemoteAuthDatasource {
  factory RemoteAuthDatasource(Dio dio, {String baseUrl}) =
      _RemoteAuthDatasource;

  @POST("/api/member/login")
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<LoginResponseDto> login(@Body() LoginRequestDto dto);
}

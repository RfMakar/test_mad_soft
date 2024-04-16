import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_mad_soft/data/api/endpoints.dart';
import 'package:test_mad_soft/data/models/payload/payload.dart';

part 'rest_client_api.g.dart';

@RestApi()
abstract class RestClientApi {
  factory RestClientApi(Dio dio) = _RestClientApi;

  @GET(EndPoints.payload)
  Future<HttpResponse<Payload>> getPayload();
}

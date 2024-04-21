import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_mad_soft/core/constants/constans.dart';
import 'package:test_mad_soft/data/data_sources/endpoints.dart';
import 'package:test_mad_soft/data/models/payload/payload.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: apiBaseURL)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET(EndPoints.payload)
  Future<HttpResponse<PayLoadModel>> getPayload();
}

import 'package:dio/dio.dart';
import 'package:elevate_1/config/constans.dart';
import 'package:elevate_1/data/models/category_model.dart';
import 'package:elevate_1/data/models/category_reponse.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: BASE_URl)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('{endPoint}')
  Future<CategoryReponse> getCategories(@Path('endPoint') String endPoint);
}

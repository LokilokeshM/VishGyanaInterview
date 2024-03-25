import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_app/packages/network/api_config.dart';
import 'package:interview_app/packages/network/app/entity/location_response.dart';

abstract class RoutesRepo {
  Future<LocationResponse?> getRoutes();
}

class RoutesRepoImpl extends RoutesRepo {
  RoutesRepoImpl(this.ref);
  Ref ref;
  @override
  Future<LocationResponse?> getRoutes() async {
    try {
      final response = await Dio().get(ApiConfig.apiBaseUrl);

      return LocationResponse.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}

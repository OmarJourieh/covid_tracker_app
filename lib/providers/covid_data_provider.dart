import 'dart:convert';

import 'package:covid_tracker_usa/models/covid_country_record.dart';
import 'package:covid_tracker_usa/models/covid_record.dart';
import 'package:covid_tracker_usa/models/state.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart';

import 'package:dio/dio.dart';

class CovidDataProvider extends ChangeNotifier {
  final Dio dio = new Dio();

  Future<CovidRecord> getRecentByState(AmericanState state) async {
    dio.interceptors.add(DioCacheManager(CacheConfig()).interceptor);
    try {
      var data = await dio.get(
        "https://api.covidtracking.com/v1/states/${state.tag}/current.json",
        options: buildCacheOptions(Duration(days: 7), forceRefresh: true),
      );
      // print(data.data.runtimeType);
      return CovidRecord.fromJson(data.data);
    } catch (error, stacktrace) {
      print(error);
    }
  }

  Future<CovidCountryRecord> getRecentUSA() async {
    dio.interceptors.add(DioCacheManager(CacheConfig()).interceptor);
    var data = await dio.get(
      "https://api.covidtracking.com/v1/us/current.json",
      options: buildCacheOptions(Duration(days: 7), forceRefresh: true),
    );
    return CovidCountryRecord.fromJson(data.data[0]);
  }
}

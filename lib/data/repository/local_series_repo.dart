import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:inova_assign/domain/models.dart';
import 'series_repo.dart';

class LocalSeriesRepository implements Series {
  @override
  Future<Classes> getClasses() async {
    final String response =
        await rootBundle.loadString('assets/json/class.json');
    final data = await json.decode(response);
    return Classes.fromJson(data);
  }

  @override
  Future<CommunityModel> getCommunity() async {
    final String response =
        await rootBundle.loadString('assets/json/community.json');
    final data = await json.decode(response);
    return CommunityModel.fromJson(data);
  }

  @override
  Future<OverviewModel> getOverview() async {
    final String response =
        await rootBundle.loadString('assets/json/overview.json');
    // final data = await json.decode(response);
    log('ress $response');
    return OverviewModel.fromJson(jsonDecode(response));
  }
}

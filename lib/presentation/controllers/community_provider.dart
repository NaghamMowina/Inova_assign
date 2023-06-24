import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:inova_assign/data/repository/local_series_repo.dart';
import 'package:inova_assign/domain/models.dart';

class CommunityProvider extends ChangeNotifier {
  bool? _showLoading = false;
  bool? get showLoading => _showLoading;

  CommunityModel? _community;
  CommunityModel? get community => _community;
  fetchlocalcommunity() async {
    try {
      _showLoading = true;
      //notifyListeners();
      _community = await LocalSeriesRepository().getCommunity();
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      log(e.toString());
    }
  }
}

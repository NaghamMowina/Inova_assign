import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:inova_assign/data/repository/local_series_repo.dart';
import 'package:inova_assign/domain/models.dart';

class OverviewProvider extends ChangeNotifier {
  bool? _showLoading = false;
  bool? get showLoading => _showLoading;

  OverviewModel? _overview;
  OverviewModel? get overview => _overview;
  fetchlocaloverview() async {
    try {
      _showLoading = true;
      //notifyListeners();
      _overview = await LocalSeriesRepository().getOverview();
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

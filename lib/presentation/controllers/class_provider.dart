import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:inova_assign/data/repository/local_series_repo.dart';
import 'package:inova_assign/domain/models.dart';

class ClassProvider extends ChangeNotifier {
  bool? _showLoading = false;
  bool? get showLoading => _showLoading;

  Classes? _classModel;
  Classes? get classModel => _classModel;
  fetchlocalclass() async {
    try {
      _showLoading = true;
      //notifyListeners();
      _classModel = await LocalSeriesRepository().getClasses();
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

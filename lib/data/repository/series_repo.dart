import 'package:inova_assign/domain/models.dart';

abstract class Series {
  Future<OverviewModel> getOverview();
  Future<Classes> getClasses();
  Future<CommunityModel> getCommunity();
}

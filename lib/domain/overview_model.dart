import 'package:inova_assign/domain/models.dart';

class OverviewModel {
  String? description;
  String? video;
  Overall? overall;

  OverviewModel({this.description, this.video, this.overall});

  OverviewModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    video = json['video'];
    overall =
        json['overall'] != null ? Overall.fromJson(json['overall']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['video'] = video;
    if (overall != null) {
      data['overall'] = overall!.toJson();
    }
    return data;
  }
}

class Overall {
  String? totalTime;
  int? videosNumber;
  String? difficulty;
  String? intensity;
  List<Coaches>? coaches;
  List<ClassModel>? classes;

  Overall(
      {this.totalTime,
      this.videosNumber,
      this.difficulty,
      this.intensity,
      this.coaches,
      this.classes});

  Overall.fromJson(Map<String, dynamic> json) {
    totalTime = json['totalTime'];
    videosNumber = json['videosNumber'];
    difficulty = json['difficulty'];
    intensity = json['intensity'];
    if (json['coaches'] != null) {
      coaches = <Coaches>[];
      json['coaches'].forEach((v) {
        coaches!.add(Coaches.fromJson(v));
      });
    }
    if (json['classes'] != null) {
      classes = <ClassModel>[];
      json['classes'].forEach((v) {
        classes!.add(ClassModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalTime'] = totalTime;
    data['videosNumber'] = videosNumber;
    data['difficulty'] = difficulty;
    data['intensity'] = intensity;
    if (coaches != null) {
      data['coaches'] = coaches!.map((v) => v.toJson()).toList();
    }
    if (classes != null) {
      data['classes'] = classes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Coaches {
  String? name;
  String? description;

  Coaches({this.name, this.description});

  Coaches.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

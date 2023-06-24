class Classes {
  List<ClassModel>? classes;

  Classes({this.classes});

  Classes.fromJson(Map<String, dynamic> json) {
    if (json['classes'] != null) {
      classes = <ClassModel>[];
      json['classes'].forEach((v) {
        classes!.add(ClassModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (classes != null) {
      data['classes'] = classes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ClassModel {
  String? name;
  String? url;
  String? duration;
  String? description;

  ClassModel({this.name, this.url, this.duration, this.description});

  ClassModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    duration = json['duration'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['duration'] = duration;
    data['description'] = description;
    return data;
  }
}

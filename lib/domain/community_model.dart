class CommunityModel {
  List<Community>? community;

  CommunityModel({this.community});

  CommunityModel.fromJson(Map<String, dynamic> json) {
    if (json['community'] != null) {
      community = <Community>[];
      json['community'].forEach((v) {
        community!.add(Community.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (community != null) {
      data['community'] = community!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Community {
  String? username;
  String? img;
  String? time;
  String? videoName;
  String? className;

  Community(
      {this.username, this.img, this.time, this.videoName, this.className});

  Community.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    img = json['img'];
    time = json['time'];
    videoName = json['videoName'];
    className = json['className'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['img'] = img;
    data['time'] = time;
    data['videoName'] = videoName;
    data['className'] = className;
    return data;
  }
}

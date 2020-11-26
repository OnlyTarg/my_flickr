

import 'dart:convert';

List<Picture> imagesFromJson(String str) => List<Picture>.from(json.decode(str).map((x) => Picture.fromJson(x)));
String imagesToJson(List<Picture> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Picture {
  Picture({
    this.id,
    this.owner,
    this.secret,
    this.server,
    this.farm,
    this.title,
    this.ispublic,
    this.isfriend,
    this.isfamily,
    this.oWidth,
    this.oHeight,
  });

  String id;
  String owner;
  String secret;
  String server;
  int farm;
  String title;
  int ispublic;
  int isfriend;
  int isfamily;
  String oWidth;
  String oHeight;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
    id: json["id"],
    owner: json["owner"],
    secret: json["secret"],
    server: json["server"],
    farm: json["farm"],
    title: json["title"],
    ispublic: json["ispublic"],
    isfriend: json["isfriend"],
    isfamily: json["isfamily"],
    oWidth: json["o_width"] == null ? null : json["o_width"],
    oHeight: json["o_height"] == null ? null : json["o_height"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "owner": owner,
    "secret": secret,
    "server": server,
    "farm": farm,
    "title": title,
    "ispublic": ispublic,
    "isfriend": isfriend,
    "isfamily": isfamily,
    "o_width": oWidth == null ? null : oWidth,
    "o_height": oHeight == null ? null : oHeight,
  };
}

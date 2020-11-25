// To parse this JSON data, do
//
//     final images = imagesFromJson(jsonString);

import 'dart:convert';

List<Images> imagesFromJson(String str) => List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Images {
  Images({
    this.id,
    this.owner,
    this.secret,
    this.server,
    this.farm,
    this.title,
    this.ispublic,
    this.isfriend,
    this.isfamily,
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

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    id: json["id"],
    owner: json["owner"],
    secret: json["secret"],
    server: json["server"],
    farm: json["farm"],
    title: json["title"],
    ispublic: json["ispublic"],
    isfriend: json["isfriend"],
    isfamily: json["isfamily"],
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
  };
}

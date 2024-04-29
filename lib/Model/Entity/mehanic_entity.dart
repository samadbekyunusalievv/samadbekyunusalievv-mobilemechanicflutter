class ServiceMehanicEntity {
  int? id;
  String? name;

  ServiceMehanicEntity({this.id, this.name});

  ServiceMehanicEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
class ServiceProfileEntity {
  int? id;
  String? name;
  String? surename;
  String? email;

  ServiceProfileEntity({this.id, this.name, this.surename,this.email});

  ServiceProfileEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    surename = json["surename"];
    email = json ["email"];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['surename'] = this.surename;
    data['email'] = this.email;
    return data;
  }
}

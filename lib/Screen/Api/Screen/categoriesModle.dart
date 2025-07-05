class categoriesModel {
  int? id;
  int? admin_id;
  String? name;
  String? icon;
  String? created_at;
  String? updated_at;

  categoriesModel({
    this.id,
    this.admin_id,
    this.name,
    this.icon,
    this.created_at,
    this.updated_at,
  });

  categoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    admin_id = json['admin_id'];
    name = json['name'];
    icon = json['icon'];
    created_at = json['created_at'];
    updated_at = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['admin_id'] = this.admin_id;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['created_at'] = this.created_at;
    data['updated_at'] = this.updated_at;

    return data;
  }
}

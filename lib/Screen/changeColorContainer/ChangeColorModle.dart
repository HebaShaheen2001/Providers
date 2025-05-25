class ChangeColorModle {
  String? name;
  String? age;
  String? length;
  String? weight;

  ChangeColorModle({
    this.name,
    this.age,
    this.length,
    this.weight,
  });

  ChangeColorModle.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    length = json['name_en'];
    weight = json['image'];
    age = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['length'] = this.length;
    data['weight'] = this.weight;

    return data;
  }
}

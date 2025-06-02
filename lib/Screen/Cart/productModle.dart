class productModle {
  String? name;
  String? price;
  String? description;
  bool? isAdd;

  productModle({
    this.name,
    this.price,
    this.description,
    this.isAdd,
  });

  productModle.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    description = json['description'];
    isAdd = json['isAdd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    data['isAdd'] = this.isAdd;

    return data;
  }
}

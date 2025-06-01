class productModle {
  String? name;
  String? price;
  String? description;

  productModle({
    this.name,
    this.price,
    this.description,
  });

  productModle.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;

    return data;
  }
}

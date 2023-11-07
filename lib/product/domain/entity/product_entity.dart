class Product {
  String? id;
  String? name;
  String? description;
  String? brand;
  String? category;
  double? price;
  String? image;
  bool? state;

  Product(
    this.id,
    this.name,
    this.description,
    this.brand,
    this.category,
    this.price,
    this.image,
    this.state,
  );

  Product.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    description = json['description'];
    brand = json['brand'];
    category = json['category'];
    price = json['price'];
    image = json['image'];
    state = json['state'];
  }

  Product.empty(){
    id = '';
    name = '';
    description = '';
    brand = '';
    category = '';
    price = 0;
    image = '';
    state = false;
  }

  Map<String, dynamic> toFilterMap(){
    return {
      'name': name!,
      'category': category!,
      'price': price!
    };
  }
}

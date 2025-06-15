class ProductsModel {
  final String productName;
  final String category;
  final String price;
  final String dic;
  ProductsModel({
    required this.productName,
    required this.category,
    required this.price,
    required this.dic,
  });
  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      productName: json['productName'],
      category: json['category'],
      price: json['price'],
      dic: json['dic'],
    );
  }
}

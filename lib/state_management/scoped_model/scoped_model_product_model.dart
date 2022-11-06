// ignore_for_file: avoid_print

import 'package:scoped_model/scoped_model.dart';

class ProductModel extends Model {
  final int id;
  int quantity;
  String name;
  String description;
  bool isClicked;
  Function? onClick;

  ProductModel(
      {this.id = 0,
      this.name = '',
      this.description = '',
      this.isClicked = false,
      this.onClick,
      this.quantity = 0});

  factory ProductModel.fromMap(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      isClicked: json['isClicked'],
      quantity: json['quantity'],
    );
  }

  void updateProductInfo(String name, String description) {
    this.name = name;
    this.description = description;
    notifyListeners();
  }

  void addQuantity() {
    quantity++;
  }

  void toggleClick(int index) {
    print('toggled! $isClicked $index');
    if (onClick != null) onClick!(index);
    isClicked = (!isClicked) ? true : false;

    notifyListeners();
  }
}

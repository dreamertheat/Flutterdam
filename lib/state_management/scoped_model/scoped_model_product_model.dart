// ignore_for_file: avoid_print

import 'package:scoped_model/scoped_model.dart';

class ProductModel extends Model {
  final int id;
  int quantity;
  String name;
  String description;
  bool isClicked;
  ProductModel(
      this.id, this.name, this.description, this.isClicked, this.quantity);

  factory ProductModel.fromMap(Map<String, dynamic> json) {
    return ProductModel(
      json['id'],
      json['name'],
      json['description'],
      json['isClicked'],
      json['quantity'],
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

  void toggleClick() {
    print('toggled! $isClicked');
    isClicked = (!isClicked) ? true : false;

    notifyListeners();
  }
}

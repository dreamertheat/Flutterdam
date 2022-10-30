// ignore_for_file: avoid_print

import 'package:scoped_model/scoped_model.dart';

class ProductModel extends Model {
  final int id;
  String name;
  String description;
  bool isClicked;
  ProductModel(this.id, this.name, this.description, this.isClicked);

  factory ProductModel.fromMap(Map<String, dynamic> json) {
    return ProductModel(
      json['id'],
      json['name'],
      json['description'],
      json['isClicked'],
    );
  }

  void updateProductInfo(String name, String description) {
    this.name = name;
    this.description = description;
    notifyListeners();
  }

  void toggleClick() {
    print('toggled! $isClicked');
    isClicked = true;
    notifyListeners();
  }
}

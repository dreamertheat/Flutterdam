import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';

class ScopedModelDummyData {
  static List<ProductModel> getMockModels() {
    List<ProductModel> temp = [];

    temp.add(ProductModel(
        id: 1,
        name: "John",
        description: "Dough",
        isClicked: false,
        quantity: 0));
    temp.add(ProductModel(
        id: 2,
        name: "Arnold",
        description: "Schwarz",
        isClicked: false,
        quantity: 0));
    temp.add(ProductModel(
        id: 3,
        name: "Sylvester",
        description: "Stallone",
        isClicked: false,
        quantity: 0));
    temp.add(ProductModel(
        id: 4,
        name: "Al",
        description: "Pacino",
        isClicked: false,
        quantity: 0));
    temp.add(ProductModel(
        id: 5,
        name: "Dwayne",
        description: "Johnson",
        isClicked: false,
        quantity: 0));

    return temp;
  }
}

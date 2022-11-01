import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';

class ScopedModelDummyData {
  static List<ProductModel> getMockModels() {
    List<ProductModel> temp = [];

    temp.add(ProductModel(1, "John", "Dough", false, 0));
    temp.add(ProductModel(2, "Arnold", "Schwarz", false, 0));
    temp.add(ProductModel(3, "Sylvester", "Stallone", false, 0));
    temp.add(ProductModel(4, "Al", "Pacino", false, 0));
    temp.add(ProductModel(5, "Dwayne", "Johnson", false, 0));

    return temp;
  }
}

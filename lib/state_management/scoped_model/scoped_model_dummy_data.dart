import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';

class ScopedModelDummyData {
  static List<ProductModel> getMockModels() {
    List<ProductModel> temp = [];

    temp.add(ProductModel(1, "John", "Dough", false));
    temp.add(ProductModel(2, "Arnold", "Schwarz", false));
    temp.add(ProductModel(3, "Sylvester", "Stallone", false));
    temp.add(ProductModel(4, "Al", "Pacino", false));
    temp.add(ProductModel(5, "Dwayne", "Johnson", false));

    return temp;
  }
}

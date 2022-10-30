import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_dummy_data.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_view.dart';

class SMProductDisplay extends StatelessWidget {
  SMProductDisplay({super.key});

  final List<ProductModel> products = ScopedModelDummyData.getMockModels();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: ((context, index) {
            return SMProductView(
              pm: products[index],
            );
          }),
        ));
  }
}

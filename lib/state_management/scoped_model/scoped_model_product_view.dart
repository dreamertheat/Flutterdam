import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';
import 'package:scoped_model/scoped_model.dart';

class SMProductView extends StatelessWidget {
  const SMProductView({super.key, required this.pm});

  final ProductModel pm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: ScopedModel<ProductModel>(
        model: pm,
        child: TextButton(
            onPressed: () {
              pm.toggleClick();
            },
            child: ScopedModelDescendant<ProductModel>(
                builder: (context, child, model) =>
                    Text("${pm.name} is clicked:${pm.isClicked}"))),
      ),
    );
  }
}

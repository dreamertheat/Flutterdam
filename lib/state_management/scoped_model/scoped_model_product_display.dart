import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_dummy_data.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_view.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../common/constants/styles.dart';

class SMProductDisplay extends StatefulWidget {
  const SMProductDisplay({super.key});

  @override
  State<SMProductDisplay> createState() => _SMProductDisplayState();
}

class _SMProductDisplayState extends State<SMProductDisplay> {
  List<ProductModel> products = ScopedModelDummyData.getMockModels();

  ProductModel pm = ProductModel();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.white,
            ),
            Wrap(
              children: products.map((e) {
                return SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          e.name,
                          style: Styles.commonButton(fontSize: 11),
                        ),
                        Text(
                          e.description,
                          style: Styles.commonButton(fontSize: 11),
                        ),
                        TextButton(
                          onPressed: () {
                            e.onClick!();
                          },
                          child: Text(
                            '${e.isClicked}',
                            style: Styles.commonButton(fontSize: 11),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: GestureDetector(
                child: Text("count: ${pm.quantity}"),
              ),
            )
          ],
        ));
  }
}

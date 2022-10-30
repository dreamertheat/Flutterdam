import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:math' as math;

import '../../common/constants/styles.dart';

class SMProductView extends StatelessWidget {
  SMProductView({super.key, required this.pm});

  final ProductModel pm;
  final Color color =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: TextButton(
        onPressed: () {
          pm.toggleClick();
        },
        child: ScopedModelDescendant<ProductModel>(
            builder: (context, child, model) => Text(
                  "${pm.name} is clicked:${pm.isClicked}",
                  style: Styles.commonText(color: color),
                )),
      ),
    );
  }
}

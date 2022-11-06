import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'dart:math' as math;

import '../../common/constants/styles.dart';

class SMProductView extends StatelessWidget {
  SMProductView({super.key, required this.pm, required this.index});

  final ProductModel pm;
  final int index;
  final Color color =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      padding: const EdgeInsets.all(1),
      child: TextButton(
        onPressed: () {
          pm.toggleClick(index);
        },
        child: ScopedModelDescendant<ProductModel>(
            builder: (context, child, model) => Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Text(
                    "${pm.name} \nis clicked:${pm.isClicked}",
                    style: Styles.commonText(color: color),
                  ),
                )),
      ),
    );
  }
}

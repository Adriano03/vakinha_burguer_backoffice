import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/ui/helpers/debouncer.dart';
import '../../../../core/ui/widgets/base_header.dart';
import '../products_controller.dart';

class ProductsHeader extends StatelessWidget {
  final ProductsController controller;

  const ProductsHeader({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 500);
    return BaseHeader(
      title: 'ADMINISTRAR PRODUTOS',
      buttonLabel: 'ADICIONAR PRODUTO',
      buttonPressed: () async {
      await  Modular.to.pushNamed('/products/detail');
      controller.loadProducts();
      },
      searchChange: (name) {
        debouncer.call(() {
          controller.filterByName(name);
        });
      },
    );
  }
}

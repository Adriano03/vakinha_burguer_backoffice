import 'package:flutter/material.dart';

import '../../../core/ui/widgets/base_header.dart';

class ManageProductsHeader extends StatelessWidget {
  const ManageProductsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseHeader(
      title: 'ADMINISTRAR PRODUTOS',
      buttonLabel: 'ADICIONAR PRODUTO',
      buttonPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/manage_products_header.dart';

class ManageProductsPage extends StatelessWidget {
  const ManageProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.only(left: 40, top: 40),
      child: Column(
        children: const [
          ManageProductsHeader(),
        ],
      ),
    );
  }
}

import 'package:flutter_modular/flutter_modular.dart';

import 'manage_products_page.dart';

class ManageProductsModule extends Module {

   @override
   List<Bind> get binds => [];

   @override
   List<ModularRoute> get routes => [
      ChildRoute('/', child: (context, args) => const ManageProductsPage())
   ];

}
import '../../dto/order/order_product_dto.dart';
import '../../models/orders/order_model.dart';
import '../../dto/order/order_dto.dart';
import '../../models/payment_type_model.dart';
import '../../models/user_model.dart';
import '../../repositories/payment_type/payment_type_repository.dart';
import '../../repositories/products/product_repository.dart';
import '../../repositories/user/user_repository.dart';
import './get_order_by_id.dart';

class GetOrderByIdImpl implements GetOrderById {
  final PaymentTypeRepository _paymentTypeRepository;
  final UserRepository _userRepository;
  final ProductRepository _productRepository;

  GetOrderByIdImpl(this._paymentTypeRepository, this._userRepository, this._productRepository);

  @override
  Future<OrderDto> call(OrderModel order) => _orderDtoParse(order);

  Future<OrderDto> _orderDtoParse(OrderModel order) async {
    // Busca os dados com id do tipo de pagamento;
    final paymentTypeFuture = _paymentTypeRepository.getById(order.paymentTypeId);
    // Busca os dados com o id do usuário;
    final userFuture = _userRepository.getById(order.userId);
    // Popula o OrderProductDto;
    final orderProductsFuture = _orderProductParse(order);

    // Aguarda apenas uma vez os métodos selecionados em vez de aguardar um por um;
    final responses = await Future.wait([paymentTypeFuture, userFuture, orderProductsFuture]);
    return OrderDto(
      id: order.id,
      date: order.date,
      status: order.status,
      orderProduct: responses[2] as List<OrderProductDto>,
      user: responses[1] as UserModel,
      address: order.address,
      cpf: order.cpf,
      paymentTypeModel: responses[0] as PaymentTypeModel,
    );
  }

  Future<List<OrderProductDto>> _orderProductParse(OrderModel order) async {
    final orderProducts = <OrderProductDto>[];

    // Faz um laço que bate no backend quantas vezes for preciso até pegar todos os produtos;
    final productsFuture =
        order.orderProducts.map((e) => _productRepository.getProduct(e.productId)).toList();

    final products = await Future.wait(productsFuture);

    for (var i = 0; i < order.orderProducts.length; i++) {
      final orderProduct = order.orderProducts[i];
      final productDto = OrderProductDto(
        product: products[i],
        amount: orderProduct.amount,
        totalPrice: orderProduct.totalPrice,
      );
      orderProducts.add(productDto);
    }
    return orderProducts;
  }
}

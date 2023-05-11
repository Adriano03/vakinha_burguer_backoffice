import 'dart:developer';

import 'package:mobx/mobx.dart';

import '../../models/payment_type_model.dart';
import '../../repositories/payment_type/payment_type_repository.dart';

part 'payment_type_controller.g.dart';

enum PaymentTypeStatus {
  initial,
  loading,
  loaded,
  error,
  addOrUpdatePayment,
  saved,
}

class PaymentTypeController = PaymentTypeControllerBase with _$PaymentTypeController;

abstract class PaymentTypeControllerBase with Store {
  final PaymentTypeRepository _paymentTypeRepository;

  @readonly
  var _status = PaymentTypeStatus.initial;

  @readonly
  var _paymentTypes = <PaymentTypeModel>[];

  @readonly
  String? _errorMessage;

  @readonly
  bool? _filterEnabled;

  @readonly
  PaymentTypeModel? _paymentTypeSelected;

  PaymentTypeControllerBase(this._paymentTypeRepository);

  @action
  void changeFilter(bool? enabled) => _filterEnabled = enabled;

  @action
  Future<void> loadPayment() async {
    try {
      _status = PaymentTypeStatus.loading;
      _paymentTypes = await _paymentTypeRepository.findAll(_filterEnabled);
      _status = PaymentTypeStatus.loaded;
    } catch (e, s) {
      log('Erro ao carregar as formas de pagamento', error: e, stackTrace: s);
      _status = PaymentTypeStatus.error;
      _errorMessage = 'Erro ao carregar as formas de pagamento';
    }
  }

  @action
  Future<void> addPayment() async {
    _status = PaymentTypeStatus.loading;
    await Future.delayed(Duration.zero);
    _paymentTypeSelected = null;
    _status = PaymentTypeStatus.addOrUpdatePayment;
  }

  @action
  Future<void> editPayment(PaymentTypeModel payment) async {
    _status = PaymentTypeStatus.loading;
    await Future.delayed(Duration.zero);
    _paymentTypeSelected = payment;
    _status = PaymentTypeStatus.addOrUpdatePayment;
  }

  @action
  Future<void> savePayment({
    int? id,
    required String name,
    required String acronym,
    required bool enabled,
  }) async {
    _status = PaymentTypeStatus.loading;
    final paymentTypeModel = PaymentTypeModel(
      id: id,
      name: name,
      acronym: acronym,
      enabled: enabled,
    );

    await _paymentTypeRepository.save(paymentTypeModel);
    _status = PaymentTypeStatus.saved;
  }
}

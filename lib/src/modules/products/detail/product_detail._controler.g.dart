// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas

part of 'product_detail._controler.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductDetailControler on ProductDetailControlerBase, Store {
  late final _$_statusAtom =
      Atom(name: 'ProductDetailControlerBase._status', context: context);

  ProductDetailStateStatus get status {
    _$_statusAtom.reportRead();
    return super._status;
  }

  @override
  ProductDetailStateStatus get _status => status;

  @override
  set _status(ProductDetailStateStatus value) {
    _$_statusAtom.reportWrite(value, super._status, () {
      super._status = value;
    });
  }

  late final _$_errorMessageAtom =
      Atom(name: 'ProductDetailControlerBase._errorMessage', context: context);

  String? get errorMessage {
    _$_errorMessageAtom.reportRead();
    return super._errorMessage;
  }

  @override
  String? get _errorMessage => errorMessage;

  @override
  set _errorMessage(String? value) {
    _$_errorMessageAtom.reportWrite(value, super._errorMessage, () {
      super._errorMessage = value;
    });
  }

  late final _$_imagePathAtom =
      Atom(name: 'ProductDetailControlerBase._imagePath', context: context);

  String? get imagePath {
    _$_imagePathAtom.reportRead();
    return super._imagePath;
  }

  @override
  String? get _imagePath => imagePath;

  @override
  set _imagePath(String? value) {
    _$_imagePathAtom.reportWrite(value, super._imagePath, () {
      super._imagePath = value;
    });
  }

  late final _$_productModelAtom =
      Atom(name: 'ProductDetailControlerBase._productModel', context: context);

  ProductModel? get productModel {
    _$_productModelAtom.reportRead();
    return super._productModel;
  }

  @override
  ProductModel? get _productModel => productModel;

  @override
  set _productModel(ProductModel? value) {
    _$_productModelAtom.reportWrite(value, super._productModel, () {
      super._productModel = value;
    });
  }

  late final _$uploadImageProductAsyncAction = AsyncAction(
      'ProductDetailControlerBase.uploadImageProduct',
      context: context);

  @override
  Future<void> uploadImageProduct(Uint8List file, String fileName) {
    return _$uploadImageProductAsyncAction
        .run(() => super.uploadImageProduct(file, fileName));
  }

  late final _$saveAsyncAction =
      AsyncAction('ProductDetailControlerBase.save', context: context);

  @override
  Future<void> save(String name, double price, String description) {
    return _$saveAsyncAction.run(() => super.save(name, price, description));
  }

  late final _$loadProductAsyncAction =
      AsyncAction('ProductDetailControlerBase.loadProduct', context: context);

  @override
  Future<void> loadProduct(int? id) {
    return _$loadProductAsyncAction.run(() => super.loadProduct(id));
  }

  late final _$deleteProductAsyncAction =
      AsyncAction('ProductDetailControlerBase.deleteProduct', context: context);

  @override
  Future<void> deleteProduct() {
    return _$deleteProductAsyncAction.run(() => super.deleteProduct());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

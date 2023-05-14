// GENERATED CODE - DO NOT MODIFY BY HAND

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

  late final _$uploadImageProductAsyncAction = AsyncAction(
    'ProductDetailControlerBase.uploadImageProduct',
    context: context,
  );

  @override
  Future<void> uploadImageProduct(Uint8List file, String fileName) {
    return _$uploadImageProductAsyncAction.run(() => super.uploadImageProduct(file, fileName));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

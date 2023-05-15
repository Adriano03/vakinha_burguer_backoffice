import 'package:flutter/material.dart';

enum OrderStatus {
  pendente('Pendente', 'P', Colors.blue),
  confirmado('Confirmado', 'C', Colors.green),
  finalizado('Finalizado', 'F', Colors.black),
  cancelado('Cancelado', 'R', Colors.red);

  final String name;
  final String acronyn;
  final Color color;

  const OrderStatus(this.name, this.acronyn, this.color);

  static OrderStatus parse(String acronyn) {
    return values.firstWhere((s) => s.acronyn == acronyn);
  }
}

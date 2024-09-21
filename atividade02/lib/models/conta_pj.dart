import 'package:atividade02/models/conta.dart';

class ContaPj extends Conta {
  String cnpj;

  ContaPj({
    required super.agencia,
    required super.numeroConta,
    required super.nomeTitular,
    required super.saldo,
    required super.limite,
    required this.cnpj
  });
}

import 'package:atividade02/models/conta.dart';

class ContaPf extends Conta {
  String cpf;

  ContaPf(
      {required super.agencia,
      required super.numeroConta,
      required super.nomeTitular,
      required super.saldo,
      required super.limite,
      required this.cpf});
}

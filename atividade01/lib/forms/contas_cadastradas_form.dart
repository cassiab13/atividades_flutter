import 'package:atividade01/models/conta.dart';

class ContasCadastradasForm {
  static List<Conta> contas = [
    Conta(
      titular: "João",
      agencia: "4000",
      numeroConta: "1000",
    ),
    Conta(
      titular: "Maria",
      agencia: "4100",
      numeroConta: "1100"
    ),
    Conta(
      titular: "Pedro",
      agencia: "4000",
      numeroConta: "1001"
    )
  ];
}

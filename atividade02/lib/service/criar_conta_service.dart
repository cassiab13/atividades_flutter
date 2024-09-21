import 'package:atividade02/models/conta.dart';

class CriarContaService<T extends Conta> {
  List contas = [];
  void create(T conta) {
    contas.add(conta);
    print('Criando a conta do ${conta.nomeTitular}');
    print('Conta número: ${conta.numeroConta}');
  }
}

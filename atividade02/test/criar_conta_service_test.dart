import 'package:atividade02/models/conta_pf.dart';
import 'package:atividade02/models/conta_pj.dart';
import 'package:atividade02/service/criar_conta_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('cria conta PJ', () {
    final conta = ContaPj(
        agencia: "1234",
        numeroConta: "123",
        nomeTitular: "Titular1",
        saldo: 0.00,
        limite: 100.0,
        cnpj: "123456789");

    CriarContaService contaService = CriarContaService();
    contaService.create(conta);
    expect(conta.agencia, "1234");
  });

  test('cria conta PF', () {
    final conta = ContaPf(
        agencia: "1234",
        numeroConta: "123",
        nomeTitular: "Titular1",
        saldo: 0.00,
        limite: 100.0,
        cpf: "123456789");

    CriarContaService contaService = CriarContaService();
    contaService.create(conta);
    expect(conta.agencia, "1234");
  });
}

import 'package:atividade01/forms/contas_cadastradas_form.dart';
import 'package:flutter/material.dart';

class ContasCadastradas extends StatelessWidget {
  ContasCadastradas({super.key});
  final contas = ContasCadastradasForm.contas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas cadastradas'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: contas.length,
          itemBuilder: (BuildContext context, int index) {
            final conta = contas[index];
            return Card(
              margin: const EdgeInsets.all(16.0),
              color: Colors.black12,
              child: ListTile(
              title: Text(conta.titular),
              subtitle: Text(
                  'Agência: ${conta.agencia}  -  Número da conta: ${conta.numeroConta}'),
              trailing: Text('Saldo: R\$ ${conta.saldo}'),
            ));
          },
    ));
  }
}

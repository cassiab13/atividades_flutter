import 'package:flutter/material.dart';
import '../models/conta.dart';

class ContasList extends StatelessWidget {
  final List<Conta> contas;

  const ContasList({required this.contas, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contas.length,
      itemBuilder: (context, index) {
        final conta = contas[index];
        return ListTile(
          title: Text(conta.nome),
          subtitle: Text('Agência: ${conta.agencia} - Conta: ${conta.numeroConta}'),
        );
      },
    );
  }
}

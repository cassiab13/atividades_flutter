import 'package:atividade03/components/text_form_field.dart';
import 'package:atividade03/models/conta.dart';
import 'package:atividade03/screens/contas_list.dart';
import 'package:flutter/material.dart';

class RegisterUserForm extends StatefulWidget {
  const RegisterUserForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterUserFormState();
  }
}

class _RegisterUserFormState extends State<RegisterUserForm> {
  final List<Conta> _contas = [];
  final TextEditingController _nomeTitularController = TextEditingController();
  final TextEditingController _numeroAgenciaController = TextEditingController();
  final TextEditingController _numeroContaController = TextEditingController();

  void _addConta() {
    setState(() {
      _contas.add(Conta(
          nome: _nomeTitularController.text,
          agencia: _numeroAgenciaController.text,
          numeroConta: _numeroContaController.text,
        ));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Usuário'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormFieldComponent(
                    controller: _nomeTitularController,
                    label: 'Nome do Titular',
                    
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldComponent(
                    controller: _numeroAgenciaController,
                    label: 'Número da Agência',
                  ),
                  const SizedBox(height: 16),
                  TextFormFieldComponent(
                    controller: _numeroContaController,
                    label: 'Número da Conta',
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _addConta,
                    child: const Text('Registrar'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ContasList(contas: _contas),
          ),
        ],
      ),
    );
  }
}

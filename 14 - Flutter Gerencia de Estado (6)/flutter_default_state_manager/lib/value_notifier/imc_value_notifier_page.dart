import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge.dart';
import 'package:intl/intl.dart';

class ImcValueNotifierPage extends StatefulWidget {
  const ImcValueNotifierPage({super.key});

  @override
  State<ImcValueNotifierPage> createState() => _ImcValueNotifierPageState();
}

class _ImcValueNotifierPageState extends State<ImcValueNotifierPage> {
  var imc = ValueNotifier<double>(0.0);
  final formKey = GlobalKey<FormState>();
  final controlForm = <String, TextEditingController>{
    'peso': TextEditingController(),
    'altura': TextEditingController(),
  };

  @override
  void dispose() {
    controlForm.keys.forEach((key) => controlForm[key]!.dispose());
    super.dispose();
  }

  void _calcularIMC({required double peso, required double altura}) async {
    imc.value = 0;
    await Future.delayed(Duration(seconds: 1));
    imc.value = (peso / pow(altura, 2));
  }

  @override
  Widget build(BuildContext context) {
    print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Build Tela');
    return Scaffold(
      appBar: AppBar(title: Text('Value Notifier')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ValueListenableBuilder<double>(
                  valueListenable: imc,
                  builder: (_, imcValue, __) {
                    print('>>>>>>>>>>>>>>>>>>>>>>>>>>> ValueListenableBuilder');
                    return ImcGauge(imc: imcValue);
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: controlForm['peso'],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Peso'),
                  inputFormatters: [
                    CurrencyTextInputFormatter.currency(
                      locale: 'pt_BR',
                      symbol: '',
                      turnOffGrouping: true,
                      decimalDigits: 2,
                    ),
                  ],
                  validator:
                      (value) =>
                          ((value?.isEmpty ?? true) ? 'Insira um valor' : null),
                ),
                TextFormField(
                  controller: controlForm['altura'],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Altura'),
                  inputFormatters: [
                    CurrencyTextInputFormatter.currency(
                      locale: 'pt_BR',
                      symbol: '',
                      turnOffGrouping: true,
                      decimalDigits: 2,
                    ),
                  ],
                  validator:
                      (value) =>
                          ((value?.isEmpty ?? true) ? 'Insira um valor' : null),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('Calcular IMC'),
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      var formatter = NumberFormat.simpleCurrency(
                        locale: 'pt_BR',
                        decimalDigits: 2,
                      );

                      var peso =
                          formatter.parse(controlForm['peso']!.text) as double;
                      var altura =
                          formatter.parse(controlForm['altura']!.text)
                              as double;

                      _calcularIMC(peso: peso, altura: altura);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

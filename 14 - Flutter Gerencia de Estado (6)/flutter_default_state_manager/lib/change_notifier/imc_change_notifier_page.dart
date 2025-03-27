import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/change_notifier/imc_change_notifier_controller.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge.dart';
import 'package:intl/intl.dart';

class ImcChangeNotifierPage extends StatefulWidget {
  const ImcChangeNotifierPage({super.key});

  @override
  State<ImcChangeNotifierPage> createState() => _ImcChangeNotifierPageState();
}

class _ImcChangeNotifierPageState extends State<ImcChangeNotifierPage> {
  final controlImc = ImcChangeNotifierController();
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

  @override
  Widget build(BuildContext context) {
    print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Build Tela');
    return Scaffold(
      appBar: AppBar(title: Text('Change Notifier')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                AnimatedBuilder(
                  animation: controlImc,
                  builder: (context, child) {
                    print('>>>>>>>>>>>>>>>>>>>>>>>>>>> AnimatedBuilder');
                    return ImcGauge(imc: controlImc.imc);
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

                      controlImc.calcularIMC(peso: peso, altura: altura);
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

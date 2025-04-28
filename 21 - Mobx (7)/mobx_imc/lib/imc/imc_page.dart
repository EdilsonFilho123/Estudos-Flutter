import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/imc/imc_controller.dart';
import 'package:mobx_imc/widgets/imc_gauge.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  var imc = 0.0;
  final formKey = GlobalKey<FormState>();
  final controlForm = <String, TextEditingController>{
    'peso': TextEditingController(),
    'altura': TextEditingController(),
  };
  final _controller = ImcController();
  final reactionsDispose = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();

    final react = reaction<bool>((_) => _controller.hasError, (hasError) {
      if (hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_controller.error!),
            backgroundColor: Colors.red,
          ),
        );
      }
    });
    reactionsDispose.add(react);
  }

  @override
  void dispose() {
    controlForm.keys.forEach((key) => controlForm[key]!.dispose());
    reactionsDispose.forEach((el) => el());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IMC Page')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Observer(builder: (_) => ImcGauge(imc: _controller.imc)),
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

                      _controller.calcularIMC(peso: peso, altura: altura);
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

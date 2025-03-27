import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/bloc_pattern/imc_bloc_pattern_controller.dart';
import 'package:flutter_default_state_manager/bloc_pattern/imc_state.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge.dart';
import 'package:intl/intl.dart';

class ImcBlocPatternPage extends StatefulWidget {
  const ImcBlocPatternPage({super.key});

  @override
  State<ImcBlocPatternPage> createState() => _ImcBlocPatternPageState();
}

class _ImcBlocPatternPageState extends State<ImcBlocPatternPage> {
  final controlImc = ImcBlocPatternController();
  final formKey = GlobalKey<FormState>();
  final controlForm = <String, TextEditingController>{
    'peso': TextEditingController(),
    'altura': TextEditingController(),
  };

  @override
  void dispose() {
    controlImc.dispose();
    controlForm.keys.forEach((key) => controlForm[key]!.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Pattern')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                StreamBuilder<ImcState>(
                  stream: controlImc.imcOut,
                  builder: (context, snapshot) {
                    return ImcGauge(imc: snapshot.data?.imc ?? 0);
                  },
                ),
                SizedBox(height: 20),
                StreamBuilder<ImcState>(
                  stream: controlImc.imcOut,
                  builder: (context, snapshot) {
                    // return Visibility(
                    //   visible: snapshot.data is ImcStateLoading,
                    //   replacement: Visibility(
                    //     visible: snapshot.data is ImcStateError,
                    //     child: Text('Erro ao carregar gráfico'),
                    //   ),
                    //   child: Center(child: CircularProgressIndicator()),
                    // );

                    switch (snapshot.data) {
                      case ImcStateLoading _:
                        return Center(child: CircularProgressIndicator());
                      case ImcStateError _:
                        return Text('Erro ao carregar gráfico');
                      default:
                        return SizedBox.shrink();
                    }
                  },
                ),
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

import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});
  static final title = 'Forms';
  static final route = '/forms';

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  var texto = 'oi';
  final formKey = GlobalKey<FormState>();
  final textEC = TextEditingController(text: 'texto');

  @override
  void dispose() {
    textEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(FormsPage.title)),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          // autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String str) => setState(() => texto = str),
                // ),
                // SizedBox(height: 10),
                // Text(texto),
                TextFormField(
                  controller: textEC,
                  maxLines: null,
                  decoration: InputDecoration(
                    label: Text('Nome Completo'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.orangeAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    isDense: true,
                  ),
                  validator:
                      (String? value) =>
                          ((value?.isEmpty ?? true)
                              ? 'Campo X não preenchido'
                              : null),
                ),
                TextFormField(obscureText: true, obscuringCharacter: 'X'),
                DropdownButtonFormField(
                  onChanged: (nv) {
                    print(nv);
                  },
                  // autovalidateMode: AutovalidateMode.always,
                  validator: (String? value) {
                    print(value);
                    if (value?.isEmpty ?? true)
                      return 'Selecione uma categoria...';
                    else
                      return null;
                  },
                  items: [
                    DropdownMenuItem(value: '1', child: Text('Categoria 1')),
                    DropdownMenuItem(value: '2', child: Text('Categoria 2')),
                    DropdownMenuItem(value: '3', child: Text('Categoria 3')),
                    DropdownMenuItem(value: '4', child: Text('Categoria 4')),
                    DropdownMenuItem(value: '5', child: Text('Categoria 5')),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();

                    if (formKey.currentState?.validate() ?? false)
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Formulário Valido')),
                      );
                    else
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Formulário Inválido')),
                      );
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

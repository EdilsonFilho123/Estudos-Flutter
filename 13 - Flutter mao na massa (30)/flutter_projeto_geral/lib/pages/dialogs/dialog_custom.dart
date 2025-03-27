import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  // const DialogCustom({super.key});
  DialogCustom(context) : super(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Container(
      width: 300,
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Titulo X'),
          ),
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Fechar Dialog'))
        ],
      ),
    )
  );
}

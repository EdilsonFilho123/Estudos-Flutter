import 'dart:async';

void main(List<String> args) async {
  print('Inicio Main...\n');

  scheduleMicrotask(() => print('Microtask #1'));

  await Future.delayed(Duration(seconds: 1), (() => print('Future #1 delayed') ));
  await Future(() => print('Future #2'));

  Future(() => print('Future #3'));

  scheduleMicrotask(() => print('Microtask #2'));

  print('\n...Fim Main');
}

// O uso do await faz com que as microTasks anteriores sejam não registradas nas microTasks, mas q sejam executadas antes do await,
// o uso do await via async torna a main um event e não uma microTask
// Logo, percebemos que o uso de await torna o programa em geral "mais sincrono"
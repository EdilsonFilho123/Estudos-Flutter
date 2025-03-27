import 'dart:async';

void main(List<String> args) {
  print('Inicio Main...');

  scheduleMicrotask(() => print('Microtask #1'));

  Future.delayed(Duration(seconds: 1), (() => print('Future #1 delayed') ));
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));

  scheduleMicrotask(() => print('Microtask #2'));

  print('...Fim Main');
}

// O Event Loop trabalha com o conceito de Filas FIFO, onde existem 2 tipos de filas
// sendo elas: Event e MicroTask, sendo a MicroTask prioritária
// onde o Event so vai entrar em execução quando a fila de MicroTask estiver vazia!!! 

/**
 * Event:
 * - Future.delayed
 * - Future #2
 * - Future #3
 */

/**
 * MicroTask:
 * - Main
 * - Microtask #1
 * - Microtask #2
 */
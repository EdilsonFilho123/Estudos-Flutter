void main(List<String> args) {
  print("<Iniciando Projeto...");
  // processo sincrono: cada tarefa é executada sequencialmente, onde uma só irá iniciar após a finalização da anterior
  m2();
  // processo assincrono: os processos são iniciados independentemente se o anterior for finalizado, criando um ramo paralelo e não uma sequencia
  p2();
  print("...Finalizando>");
}

void m2() {
  print("Executando processo");
}

void p2() {
  Future.delayed(Duration(seconds: 2), (() => print("Executando processo async")));
}

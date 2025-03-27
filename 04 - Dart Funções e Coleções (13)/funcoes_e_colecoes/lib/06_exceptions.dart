void main(List<String> args) {
  String idade = '';
  String? certamentonulo;
  String? certamentonulo2;

  try {
    int.parse(idade);
    certamentonulo!.toLowerCase();
    if (certamentonulo2 == null) throw Exception();
  } 
  on FormatException catch (error, stacktrace) {
    print(error);
    print(stacktrace);
  } 
  on TypeError {
    print('erro relacionado ao tipo');
  } 
  on Exception {
    print('gerado pelo <throw>');
  }
  catch (e) {
    print('erro geral');
  } 
  finally {
    print("Nenhum erro foi estourado, o programa prossegue normalmente");
  }
}

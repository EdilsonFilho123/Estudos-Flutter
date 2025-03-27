abstract class Animal {

  Animal(this._tamanho, this._idade);

  String _tamanho;
  int _idade;

  int calcularIdadeHumana();

  int getIdade() => _idade; //get
  void setIdade(int idade) => _idade = idade; // set

  String getTamanho() => _tamanho; //get
  void setTamanho(String tamanho) => _tamanho = tamanho; // set
}

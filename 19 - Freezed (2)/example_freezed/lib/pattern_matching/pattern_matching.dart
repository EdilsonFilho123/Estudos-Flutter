import 'package:freezed_annotation/freezed_annotation.dart';

part 'pattern_matching.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error([String? message]) = UnionError;
}

void main() {
  var data = Union(0);
  var loading = Union.loading();
  var error = Union.error('Fake Erro.');
  List<Union> list = [data, loading, error];

  for(var item in list){
    switch (item) {
      case UnionData(:final value):
        print('Data: $value');
        break;
      case UnionLoading():
        print('Carregando...');
        break;
      case UnionError(:final message):
        print('Erro: ${message ?? "sem detalhes"}');
        break;
    }
  }
}

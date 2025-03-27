class ImcState {
  final double imc;

  ImcState({this.imc = 0});
}

class ImcStateLoading extends ImcState { }

class ImcStateError extends ImcState { }

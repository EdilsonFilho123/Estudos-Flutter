class Numero {
  Numero(this.i);

  num i;

  Numero operator +(Numero num2) => Numero(i + num2.i);
  Numero operator ^(Numero num2) => Numero(potencia(i, num2.i, i));

  num potencia(num v, num i, num vi) {
    if (i <= 1) return v;
    else return potencia(v*vi, i-1, vi);
  }

  @override
  String toString() => i.toString();
}

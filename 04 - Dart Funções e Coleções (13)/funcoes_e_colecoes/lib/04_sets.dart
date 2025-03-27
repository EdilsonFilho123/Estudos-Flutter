void main(List<String> args) {
  // Set não permite repetir valor
  // set não usa '[]' e sim '{}'
  // por isso, para acessar um item via index, usa-se o .elementAt() invés de []

  var numList = [];
  numList.add(1);
  numList.add(2);
  numList.add(3);
  numList.add(3);
  numList.add(2);
  numList.add(1);

  var numset = <int?>{};
  numset.add(1);
  numset.add(2);
  numset.add(3);
  numset.add(3);
  numset.add(2);
  numset.add(1);
  numset.add(null);
  numset.add(null);

  print(numList);
  print(numset);
  print(numList.toSet());

  var set1 = {1, 2, 3, 4, 5};
  var set2 = {3, 4, 5, 6, 7};

  print(set1.difference(set2));
  print(set2.difference(set1));

  print(set1.union(set2));
  print(set1.intersection(set2));

  print(set1.lookup(3));
}

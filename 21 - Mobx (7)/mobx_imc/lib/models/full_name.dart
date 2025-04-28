// ignore_for_file: public_member_api_docs, sort_constructors_first
class FullName {
  String first;
  String last;

  FullName({required this.first, required this.last});

  @override
  bool operator ==(covariant FullName other) {
    if (identical(this, other)) return true;

    return other.first == first && other.last == last;
  }

  @override
  int get hashCode => first.hashCode ^ last.hashCode;

  FullName copyWith({String? first, String? last}) {
    return FullName(first: first ?? this.first, last: last ?? this.last);
  }

  @override
  String toString() => 'FullName(first: $first, last: $last)';
}

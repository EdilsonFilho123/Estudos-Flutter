import 'dart:convert';

class User {
  User({
    required this.nome,
    required this.imageURL,
    this.hasStories = false,
    this.isLive = false
  });

  final String nome;
  final String imageURL;
  bool hasStories;
  bool isLive;


  User copyWith({
    String? nome,
    String? imageURL,
    bool? hasStories,
    bool? isLive,
  }) {
    return User(
      nome: nome ?? this.nome,
      imageURL: imageURL ?? this.imageURL,
      hasStories: hasStories ?? this.hasStories,
      isLive: isLive ?? this.isLive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'imageURL': imageURL,
      'hasStories': hasStories,
      'isLive': isLive,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      nome: map['nome'] as String,
      imageURL: map['imageURL'] as String,
      hasStories: map['hasStories'] as bool,
      isLive: map['isLive'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(nome: $nome, imageURL: $imageURL, hasStories: $hasStories, isLive: $isLive)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.imageURL == imageURL;
  }

  @override
  int get hashCode {
    return nome.hashCode ^
      imageURL.hashCode;
  }
}

import 'dart:convert';

import 'package:desafio/models/user.dart';

class Post {
  final String urlImage;
  final String audio;
  final DateTime date;
  final User user;
  const Post({
    required this.urlImage,
    required this.audio,
    required this.date,
    required this.user,
  });

  Post copyWith({String? urlImage, String? audio, DateTime? date, User? user}) {
    return Post(
      urlImage: urlImage ?? this.urlImage,
      audio: audio ?? this.audio,
      date: date ?? this.date,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlImage': urlImage,
      'audio': audio,
      'date': date.millisecondsSinceEpoch,
      'user': user.toMap(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      urlImage: map['urlImage'] as String,
      audio: map['audio'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      user: User.fromMap(map['user'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(urlImage: $urlImage, audio: $audio, date: $date, user: $user)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.urlImage == urlImage &&
        other.audio == audio &&
        other.date == date &&
        other.user == user;
  }

  @override
  int get hashCode {
    return urlImage.hashCode ^ audio.hashCode ^ date.hashCode ^ user.hashCode;
  }
}

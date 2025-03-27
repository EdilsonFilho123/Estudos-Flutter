import 'dart:convert';

import 'package:desafio/models/post.dart';
import 'package:desafio/models/user.dart';

class Story extends Post {
  bool isNew;
  bool isLive;
  bool onlyFrinds;
  Story({
    required super.urlImage,
    required super.audio,
    required super.date,
    required super.user,
    this.isNew = true,
    this.isLive = false,
    this.onlyFrinds = false,
  });

  @override
  Story copyWith({
    String? urlImage,
    String? audio,
    DateTime? date,
    User? user,
    bool? isNew,
    bool? isLive,
    bool? onlyFrinds,
  }) {
    return Story(
      urlImage: urlImage ?? this.urlImage,
      audio: audio ?? this.audio,
      date: date ?? this.date,
      user: user ?? this.user,
      isNew: isNew ?? this.isNew,
      isLive: isLive ?? this.isLive,
      onlyFrinds: onlyFrinds ?? this.onlyFrinds,
    );
  }

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      urlImage: map['urlImage'] as String,
      audio: map['audio'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      user: User.fromMap(map['user'] as Map<String,dynamic>),
      isNew: map['isNew'] as bool,
      isLive: map['isLive'] as bool,
      onlyFrinds: map['onlyFrinds'] as bool,
    );
  }

  factory Story.fromJson(String source) =>
      Story.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlImage': urlImage,
      'audio': audio,
      'date': date.millisecondsSinceEpoch,
      'user': user.toMap(),
      'isNew': isNew,
      'isLive': isLive,
      'onlyFrinds': onlyFrinds,
    };
  }

  @override
  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Story(urlImage: $urlImage, audio: $audio, date: $date, user: $user, isNew: $isNew, isLive: $isLive, onlyFrinds: $onlyFrinds)';
  }

  @override
  bool operator ==(covariant Story other) {
    if (identical(this, other)) return true;
  
    return 
      other.urlImage == urlImage &&
      other.audio == audio &&
      other.date == date &&
      other.user == user &&
      other.isNew == isNew &&
      other.isLive == isLive &&
      other.onlyFrinds == onlyFrinds;
  }

  @override
  int get hashCode {
    return urlImage.hashCode ^
      audio.hashCode ^
      date.hashCode ^
      user.hashCode ^
      isNew.hashCode ^
      isLive.hashCode ^
      onlyFrinds.hashCode;
  }
}

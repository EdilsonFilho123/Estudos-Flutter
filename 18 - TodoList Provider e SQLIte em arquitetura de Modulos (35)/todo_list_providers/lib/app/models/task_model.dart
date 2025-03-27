class TaskModel {
  final int id;
  final String description;
  final DateTime dateTime;
  final bool finished;

  TaskModel({
    required this.id,
    required this.description,
    required this.dateTime,
    required this.finished,
  });

  factory TaskModel.fromDB(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'] as int,
      description: map['descricao'] as String,
      dateTime: DateTime.parse((map['data_hora'] as String)),
      finished: ((map['finalizado'] as int) == 1),
    );
  }

  Map<String, dynamic> toDB() {
    return <String, dynamic>{
      'id': id,
      'descricao': description,
      'data_hora': dateTime.toIso8601String().substring(0, 19),
      'finalizado': (finished ? 1 : 0),
    };
  }

  @override
  String toString() {
    return 'TaskModel(id: $id, description: $description, dateTime: $dateTime, finished: $finished)';
  }

  TaskModel copyWith({
    int? id,
    String? description,
    DateTime? dateTime,
    bool? finished,
  }) {
    return TaskModel(
      id: id ?? this.id,
      description: description ?? this.description,
      dateTime: dateTime ?? this.dateTime,
      finished: finished ?? this.finished,
    );
  }
}

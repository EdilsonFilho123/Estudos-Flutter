class TotalTasksModel {
  final int totalTasks;
  final int totalTasksFinish;

  TotalTasksModel({required this.totalTasks, required this.totalTasksFinish})
    : assert(
        totalTasks >= totalTasksFinish,
        'O número de tasks finalizadas não pode ser maior que o numero total de task',
      );

  double percentage() => (totalTasksFinish / totalTasks);
}

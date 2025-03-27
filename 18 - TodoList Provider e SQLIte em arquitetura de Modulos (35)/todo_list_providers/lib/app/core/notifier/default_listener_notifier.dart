import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/core/ui/messages.dart';

class DefaultListenerNotifier {
  final DefaultChangeNotifier changeNotifier;
  Map<DefaultChangeNotifierState, List<FunctionCallback>> callbacks = {};
  FunctionListener? functionListener;

  DefaultListenerNotifier({required this.changeNotifier});

  DefaultListenerNotifier listener({required BuildContext context}) {
    functionListener ??= () {
      if (changeNotifier.state == DefaultChangeNotifierState.loading) {
        Loader.show(context);
      } else {
        Loader.hide();
      }

      if (changeNotifier.state == DefaultChangeNotifierState.error) {
        Messages.of(
          context,
        ).showError(changeNotifier.message ?? 'Erro Desconhecido');
      }

      if (changeNotifier.state == DefaultChangeNotifierState.message) {
        Messages.of(context).showInfo(changeNotifier.message ?? '');
      }

      if (callbacks[changeNotifier.state] != null) {
        callbacks[changeNotifier.state]!.forEach(
          (call) => call(changeNotifier),
        );
      }
    };

    changeNotifier.addListener(functionListener!);

    return this;
  }

  DefaultListenerNotifier addCallbacksByState(
    DefaultChangeNotifierState state,
    FunctionCallback call,
  ) {
    if (callbacks.containsKey(state)) {
      callbacks[state]!.add(call);
    } else {
      callbacks[state] = [call];
    }

    return this;
  }

  void dispose() {
    if (functionListener != null) {
      changeNotifier.removeListener(functionListener!);
    }
  }
}

typedef FunctionListener = void Function();
typedef FunctionCallback = void Function(DefaultChangeNotifier notifier);

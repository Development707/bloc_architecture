// Copyright 2024 The Development707 Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found in the LICENSE file.

import "package:flutter_bloc/flutter_bloc.dart";

import "../../util/util.dart";

/// Observing the behavior of [Bloc] instances.
class AppBlocObserver extends BlocObserver {
  /// Create a new [AppBlocObserver] instance.
  const AppBlocObserver({
    this.logOnBlocChange = false,
    this.logOnBlocCreate = false,
    this.logOnBlocClose = false,
    this.logOnBlocError = false,
    this.logOnBlocTransition = false,
    this.logOnBlocEvent = false,
  });

  /// Logging on [Bloc] changes.
  final bool logOnBlocChange;

  /// Logging on [Bloc] creation.
  final bool logOnBlocCreate;

  /// Logging on [Bloc] close.
  final bool logOnBlocClose;

  /// Logging on [Bloc] error.
  final bool logOnBlocError;

  /// Logging on [Bloc] transition.
  final bool logOnBlocTransition;

  /// Logging on [Bloc] event.
  final bool logOnBlocEvent;

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (logOnBlocChange) {
      LogUtil.d("onChange $change", name: bloc.runtimeType.toString());
    }
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    if (logOnBlocCreate) {
      LogUtil.d("created", name: bloc.runtimeType.toString());
    }
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    if (logOnBlocClose) {
      LogUtil.d("closed", name: bloc.runtimeType.toString());
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (logOnBlocError) {
      LogUtil.e(
        "onError",
        name: bloc.runtimeType.toString(),
        errorObject: error,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (logOnBlocEvent) {
      LogUtil.d("onEvent $event", name: bloc.runtimeType.toString());
    }
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    super.onTransition(bloc, transition);
    if (logOnBlocTransition) {
      LogUtil.d("onTransition $transition", name: bloc.runtimeType.toString());
    }
  }
}

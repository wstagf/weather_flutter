// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<StoreState> _$weatherCurrentStateComputed;

  @override
  StoreState get weatherCurrentState => (_$weatherCurrentStateComputed ??=
          Computed<StoreState>(() => super.weatherCurrentState,
              name: '_HomeBase.weatherCurrentState'))
      .value;

  final _$weatherCurrentAtom = Atom(name: '_HomeBase.weatherCurrent');

  @override
  WeatherNowResponse get weatherCurrent {
    _$weatherCurrentAtom.reportRead();
    return super.weatherCurrent;
  }

  @override
  set weatherCurrent(WeatherNowResponse value) {
    _$weatherCurrentAtom.reportWrite(value, super.weatherCurrent, () {
      super.weatherCurrent = value;
    });
  }

  final _$_weatherCurrentFutureAtom =
      Atom(name: '_HomeBase._weatherCurrentFuture');

  @override
  ObservableFuture<WeatherNowResponse> get _weatherCurrentFuture {
    _$_weatherCurrentFutureAtom.reportRead();
    return super._weatherCurrentFuture;
  }

  @override
  set _weatherCurrentFuture(ObservableFuture<WeatherNowResponse> value) {
    _$_weatherCurrentFutureAtom.reportWrite(value, super._weatherCurrentFuture,
        () {
      super._weatherCurrentFuture = value;
    });
  }

  final _$getWeaterCurrentAsyncAction =
      AsyncAction('_HomeBase.getWeaterCurrent');

  @override
  Future getWeaterCurrent() {
    return _$getWeaterCurrentAsyncAction.run(() => super.getWeaterCurrent());
  }

  @override
  String toString() {
    return '''
weatherCurrent: ${weatherCurrent},
weatherCurrentState: ${weatherCurrentState}
    ''';
  }
}

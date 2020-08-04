import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/subjects.dart';

class AppBloc extends Disposable {
  final _controller = BehaviorSubject();

  Sink get sink => _controller.sink;

  Stream get stream => _controller.stream;
  //dispose will be called automatically by closing its streams

  changeToPage() {}

  @override
  void dispose() {
    _controller.close();
  }
}

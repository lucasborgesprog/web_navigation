import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_navigation/app/modules/two/three_page.dart';
import 'package:web_navigation/app/modules/two/two_page.dart';

class TwoModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TwoPage()),
        Router("/three", child: (_, args) => ThreePage()),
      ];

  static Inject get to => Inject<TwoModule>.of();
}

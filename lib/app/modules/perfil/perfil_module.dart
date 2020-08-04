import 'package:flutter/material.dart';

import 'perfil_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'perfil_page.dart';

class PerfilModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PerfilPage()),
      ];

  static Inject get to => Inject<PerfilModule>.of();

  @override
  Widget get view => PerfilPage();
}

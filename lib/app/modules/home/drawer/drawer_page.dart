import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_navigation/app/modules/home/home_bloc.dart';
import 'package:web_navigation/app/modules/perfil/perfil_module.dart';
import 'package:web_navigation/app/modules/two/two_module.dart';

class DrawerWidget extends StatelessWidget {
  final controller = Modular.get<HomeBloc>();
  final bool drawerStatus;

  DrawerWidget({Key key, this.drawerStatus = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("teste 1"),
          onTap: () {
            controller.changePage(() => PerfilModule());
            if (drawerStatus) Modular.to.pop();
          },
        ),
        ListTile(
          title: Text("teste 2"),
          onTap: () {
            controller.changePage(() => RouterOutlet(module: TwoModule()));
            if (drawerStatus) Modular.to.pop();
          },
        ),
      ],
    );
  }
}

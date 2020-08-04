import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_navigation/app/app_module.dart';
import 'package:web_navigation/app/modules/perfil/perfil_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(PerfilModule());

  // setUp(() {
  //     bloc = PerfilModule.to.get<PerfilBloc>();
  // });

  // group('PerfilBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<PerfilBloc>());
  //   });
  // });
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_navigation/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());

  // setUp(() {
  //     bloc = AppModule.to.get<AppBloc>();
  // });

  // group('AppBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<AppBloc>());
  //   });
  // });
}

import 'package:flutter/cupertino.dart';
import 'package:web_navigation/app/modules/perfil/perfil_module.dart';

class HomeBloc extends ChangeNotifier {
  Object Function() selectedpage = () => PerfilModule();

  changePage(Object Function() newPage) {
    selectedpage = newPage;

    notifyListeners();
  }

  @override
  void dispose() {
    print("--HomeBloc disposed");
    super.dispose();
  }
}

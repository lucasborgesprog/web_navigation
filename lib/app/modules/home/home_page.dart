import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_navigation/app/modules/home/drawer/drawer_page.dart';
import 'package:web_navigation/app/modules/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeBloc> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        appBar: AppBar(title: Text("Root Page")),
        drawer: Drawer(
          child: DrawerWidget(drawerStatus: true),
        ),
        body: Row(
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Container(
                margin: EdgeInsets.all(0),
                height: MediaQuery.of(context).size.height,
                width: 250,
                color: Colors.white,
                child: DrawerWidget(),
              ),
            ),
            Expanded(
              child: Consumer<HomeBloc>(
                builder: (_, bloc) {
                  print("Selected Page > ${bloc.selectedpage.runtimeType}");
                  return bloc.selectedpage();
                },
              ),
            ),
            // Expanded(
            //   child: widget.child,
            // ),
          ],
        ),
      ),
    );
  }

  listDrawerItems() {
    return Column(
      children: [
        ListTile(
          title: Text("teste 1"),
          onTap: () {
            Modular.to.pushNamed("/");
          },
        ),
        ListTile(
          title: Text("teste 2"),
          onTap: () {
            Modular.to.pushNamed("/two");
          },
        ),
      ],
    );
  }
}

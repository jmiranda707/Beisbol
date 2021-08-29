import 'package:beisbol/routes/routes.dart';
import 'package:beisbol/settings/locator.dart';
import 'package:beisbol/settings/persistence.dart';
import 'package:beisbol/viewModels/homeViewModel.dart';
import 'package:beisbol/views/bienvenidaPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PersistenceLocal();
  await prefs.initPrefs();
  setupServiceLocator();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) //orientacion vetical
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => sl<HomeViewModel>()),
      ],
          child: MaterialApp(
        title: 'Beisbol Bíblico',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute:  '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => BienvenidaPage()
          );
        },
      ),
    );
  }
}

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:go_project/design/app_colors.dart';
import 'package:go_project/design/app_theme_data.dart';
import 'package:go_project/states/states.dart';
import 'package:go_project/views/home.dart';
import 'package:provider/provider.dart';

import 'design/app_theme_data.dart';

//Bu paket sayesinde bağlantı kuruluyor
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //backende connection kısmı
  final keyApplicationId = 'q7wHH3k3GJtgQvfDJpIncqfR9O0pWtkk9V12GBDI';
  final keyClientKey = 'O7o9rJmtLtj6BS1SsmcQzuWEoowUsdVLmVckTuAG';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);
  //connection kısım bitiş

  //Back4App için istek örneği ve çalışıyor kontrol ettim databasede yeni class-table oluşturmuş
  var firstObject = ParseObject('FirstClass')
    ..set(
        'message', 'Hey ! First message from Flutter. Parse is now connected');
  await firstObject.save();
  print('done');
  //Buraya kadar olan kısım istek atma kısmı

  runApp(
    ChangeNotifierProvider<States>(
      create: (BuildContext context) => States(),
      child: MyApp(),
    ),
  );
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(1210, 700);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Go Project";
    win.show();
  });
}

const borderColor = AppColors.primary90;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightTheme(context),
      /*AppThemeData.lightTheme(context),*/
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );

  }
}

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Go Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      //home: snapshot.data == null ? const Login() : const Home(),
      initialRoute: "dashboard_view",
      */ /*initialRoute: snapshot.data == null ? "login_view" : "home_view",*/ /*
      routes: routes,
      //supportedLocales: const [Locale("en", "US"), Locale("tr", "TR")],
    );
  }
}*/

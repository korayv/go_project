import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:go_project/design/app_colors.dart';
import 'package:go_project/design/app_theme_data.dart';
import 'package:go_project/services/base_service.dart';
import 'package:go_project/states/states.dart';
import 'package:go_project/views/home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BaseService.initParse();

  runApp(
    ChangeNotifierProvider<States>(
      create: (BuildContext context) => States(),
      child: const MyApp(),
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
      title: "Go Project",
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme(context),
      home: const HomeScreen(),
    );
  }
}

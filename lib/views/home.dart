import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:go_project/views/contents/Brands.dart';
import 'package:go_project/views/contents/Customers.dart';
import 'package:go_project/views/contents/Dashboard.dart';
import 'package:go_project/views/contents/Products.dart';
import 'package:go_project/views/contents/SalesChannels.dart';
import 'package:provider/provider.dart';

import '../design/app_colors.dart';
import '../states/states.dart';
import '../widgets/app_sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Function setIndexContent = Provider.of<States>(context).setIndexContent;
    int indexContent = Provider.of<States>(context).indexContent;
    return Scaffold(
      body: WindowBorder(
        color: AppColors.primary,
        width: 1,
        child: Row(
          children: const [AppSidebar(), RightSide()],
        ),
      ),
    );
  }
}

const sidebarColor = AppColors.whiteBF;
const backgroundStartColor = AppColors.whiteBF;
const backgroundEndColor = AppColors.primary10;

class RightSide extends StatefulWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  State<RightSide> createState() => _RightSideState();
}

class _RightSideState extends State<RightSide> {
  List<Widget> contents = const [
    DashboardScreen(),      //0
    ProductsScreen(),      //1
    CustomersScreen(),     //2
    SalesChannelsScreen(), //3
    BrandsScreen(),        //4
  ];

  @override
  Widget build(BuildContext context) {
    Function setIndexContent = Provider.of<States>(context).setIndexContent;
    int indexContent = Provider.of<States>(context).indexContent;
    return Expanded(
      child: Column(children: [
        WindowTitleBarBox(
          child: Row(
            children: [Expanded(child: MoveWindow()), const WindowButtons()],
          ),
        ),
        Expanded(child: contents[indexContent]),
      ]),
    );
  }
}

final buttonColors = WindowButtonColors(
  iconNormal: AppColors.primary,
  mouseOver: AppColors.primary40,
  mouseDown: AppColors.primary30,
  iconMouseOver: AppColors.white,
  iconMouseDown: AppColors.whiteBF,
);

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: AppColors.blackText,
    iconMouseOver: Colors.white);

class WindowButtons extends StatefulWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  _WindowButtonsState createState() => _WindowButtonsState();
}

class _WindowButtonsState extends State<WindowButtons> {
  void maximizeOrRestore() {
    setState(() {
      appWindow.maximizeOrRestore();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        appWindow.isMaximized
            ? RestoreWindowButton(
          colors: buttonColors,
          onPressed: maximizeOrRestore,
        )
            : MaximizeWindowButton(
          colors: buttonColors,
          onPressed: maximizeOrRestore,
        ),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}


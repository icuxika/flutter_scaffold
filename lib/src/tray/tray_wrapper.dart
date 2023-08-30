import 'package:flutter/material.dart';
import 'package:tray_manager/tray_manager.dart';

class TrayWrapper extends StatefulWidget {
  final Widget child;
  const TrayWrapper({super.key, required this.child});

  @override
  State<TrayWrapper> createState() => _TrayWrapperState();
}

class _TrayWrapperState extends State<TrayWrapper> with TrayListener {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    trayManager.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    trayManager.removeListener(this);
    super.dispose();
  }

  @override
  void onTrayIconMouseDown() {
    print("onTrayIconMouseDown");
  }

  @override
  void onTrayIconRightMouseDown() {
    print("onTrayIconRightMouseDown");
    trayManager.popUpContextMenu();
  }

  @override
  void onTrayMenuItemClick(MenuItem menuItem) {
    switch (menuItem.key) {
      case "show_window":
        print("show_window");
        break;
      case "exit_app":
        print("exit_app");
        break;
      default:
        print(menuItem.key);
        break;
    }
  }
}

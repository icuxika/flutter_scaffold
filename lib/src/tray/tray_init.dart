import 'dart:io';

import 'package:tray_manager/tray_manager.dart';

Future<void> initSystemTray() async {
  String iconPath = Platform.isWindows
      ? "assets/icons/application.ico"
      : "assets/icons/application.png";
  await trayManager.setIcon(iconPath);
  List<MenuItem> items = [
    MenuItem(label: '版本 1.0.0', disabled: true),
    MenuItem.separator(),
    MenuItem(
      key: 'a',
      label: '输入翻译',
    ),
    MenuItem(
      key: 'b',
      label: '截图翻译',
    ),
    MenuItem(
      key: 'c',
      label: '截图OCR',
    ),
    MenuItem(
      key: 'd',
      label: '静默截图OCR',
    ),
    MenuItem.separator(),
    MenuItem(
      key: 'e',
      label: '使用教程',
    ),
    MenuItem(
      key: 'f',
      label: '检查更新',
    ),
    MenuItem(
      key: 'g',
      label: '查看日志',
    ),
    MenuItem(
      key: 'h',
      label: '设置',
    ),
    MenuItem.separator(),
    MenuItem(
      key: 'show_window',
      label: '打开窗口',
    ),
    MenuItem(
      key: 'exit_app',
      label: '退出',
    ),
  ];
  await trayManager.setContextMenu(Menu(items: items));
}

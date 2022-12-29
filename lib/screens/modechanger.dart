import 'package:counter_example/provider/themechanger_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChangerScreen extends StatefulWidget {
  ThemeChangerScreen({Key? key}) : super(key: key);

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeChangerProvider>(context);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme modes'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text("Light mode"),
              value: ThemeMode.light,
              groupValue: themeprovider.themeMode,
              onChanged: themeprovider.setThememode),
          RadioListTile<ThemeMode>(
              title: Text("Dark mode"),
              value: ThemeMode.dark,
              groupValue: themeprovider.themeMode,
              onChanged: themeprovider.setThememode),
          RadioListTile<ThemeMode>(
              title: Text("System mode"),
              value: ThemeMode.system,
              groupValue: themeprovider.themeMode,
              onChanged: themeprovider.setThememode)
        ],
      ),
    );
  }
}

import 'package:counter_example/provider/counter..dart';
import 'package:counter_example/provider/favouriteitem_provider.dart';
import 'package:counter_example/provider/post_provider_service.dart';
import 'package:counter_example/provider/slider.dart';
import 'package:counter_example/provider/themechanger_provider.dart';
import 'package:counter_example/screens/counter_example.dart';
import 'package:counter_example/screens/error.dart';
import 'package:counter_example/screens/favourite_itme_exxample.dart';
import 'package:counter_example/screens/get_post_screen.dart';
import 'package:counter_example/screens/modechanger.dart';
import 'package:counter_example/screens/slider_example.dart';
import 'package:counter_example/screens/value_notify_listner.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ConuterProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemsProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => PostProviderService()),
      ],
      child: Builder(builder: ((BuildContext context) {
        final themeprovider = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeprovider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
            ),
            darkTheme: ThemeData(brightness: Brightness.dark),
            home: const GetPostScreen());
      })),
    );
  }
}

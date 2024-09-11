import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:savey_econers/model/provider/cart_provider.dart';
import 'package:savey_econers/model/provider/favourite_provider.dart';
import 'package:savey_econers/res/components/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Savey Econers Application',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const BottomNavBar(),
      ),
    );
  }
}

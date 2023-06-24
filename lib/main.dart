import 'package:flutter/material.dart';
import 'package:inova_assign/presentation/controllers/class_provider.dart';
import 'package:inova_assign/presentation/controllers/community_provider.dart';
import 'package:inova_assign/presentation/controllers/overview_provider.dart';
import 'package:inova_assign/presentation/pages/series_page.dart';
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
        ChangeNotifierProvider(create: (_) => OverviewProvider()),
        ChangeNotifierProvider(create: (_) => ClassProvider()),
        ChangeNotifierProvider(create: (_) => CommunityProvider())
      ],
      child: MaterialApp(
        title: 'Inova Assign',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SeriesTrainingPage(),
      ),
    );
  }
}

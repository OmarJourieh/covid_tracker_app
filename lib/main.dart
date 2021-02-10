import 'package:covid_tracker_usa/providers/covid_data_provider.dart';
import 'package:covid_tracker_usa/providers/states_provider.dart';
import 'package:flutter/material.dart';
import 'package:covid_tracker_usa/src/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StatesProvider()),
        ChangeNotifierProvider(create: (context) => CovidDataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

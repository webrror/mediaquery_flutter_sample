import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 26))
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Text(deviceData.toString()),
                // Text(' Screen Size : ${deviceData.size.toString()}'),
                // Text(' Screen Width : ${deviceData.size.width.toString()}'),
                // Text(' Screen Height : ${deviceData.size.height.toString()}'),
                Text(' Platform Brightness : ${deviceData.platformBrightness.toString()}'),
                const SizedBox(height: 20,),
                Text(' Orientation : ${deviceData.orientation.toString()}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

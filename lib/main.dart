import 'package:flutter/material.dart';
import 'package:wifi/wifi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      // home: (title: 'Flutter Demo Home Page'),
    );

String ssid = await Wifi.ssid;

//Signal strength， 1-3，The bigger the number, the stronger the signal
int level = await Wifi.level;

String ip = await Wifi.ip;

var result = await Wifi.connection('ssid', 'password');

// only work on Android.
List<WifiResult> list = await Wifi.list('key');
  }
}


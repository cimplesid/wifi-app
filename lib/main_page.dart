import 'package:wifi/wifi.dart';

class Main_page extends StatelessWidget {
  String ssid = await Wifi.ssid;

//Signal strength， 1-3，The bigger the number, the stronger the signal
int level = await Wifi.level;

String ip = await Wifi.ip;

var result = await Wifi.connection('ssid', 'password');
  @override
  Widget build(BuildContext context) {
 return scaffold(  appBar: AppBar(
        title: Text('wifi app'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
            List<WifiResult> list = await Wifi.list('key'); // this key is used to filter
            
            
          ],
        ),
      ),

    );
  }
}


// only work on Android.
// List<WifiResult> list = await Wifi.list('key'); // this key is used to filter
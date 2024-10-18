// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class platform extends StatefulWidget {
//   const platform({super.key});
//
//   @override
//   _platformState createState() => _platformState();
// }
//
// class _platformState extends State<platform> {
//
//   static const _methodChannel=const MethodChannel('platform/deviceInfo');
//   late String _deviceInfo;
//   Future<void> _getChannelInfo ()
//   async {
//     String deviceInfo;
//     try{
//       deviceInfo=(await _methodChannel.invokeMethod('getDeviceInfo')) as String;
//     } on PlatformException catch(e)
//     {
//       deviceInfo="Failed to fetch the device info ${e.message}";
//     }
//     setState(() {
//       _deviceInfo=deviceInfo;
//     });
//   }
//
//   @override
//   void initState()
//   {
//     super.initState();
//     _getChannelInfo();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListTile(
//         title: Text("Device info"),
//         subtitle: Text(_deviceInfo),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformWidget extends StatefulWidget {
  const PlatformWidget({super.key});

  @override
  _PlatformWidgetState createState() => _PlatformWidgetState();
}

class _PlatformWidgetState extends State<PlatformWidget> {
  static const _methodChannel = MethodChannel('platform/deviceInfo');
  late String _deviceInfo = "Fetching device info..."; // Initialize with default value

  Future<void> _getChannelInfo() async {
    String deviceInfo;
    try {
      deviceInfo = await _methodChannel.invokeMethod('getDeviceInfo') as String;
    } on PlatformException catch (e) {
      deviceInfo = "Failed to fetch the device info: ${e.message}";
    }

    setState(() {
      _deviceInfo = deviceInfo;
    });
  }

  @override
  void initState() {
    super.initState();
    _getChannelInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Platform Channel Example")),
      body: ListTile(
        title: Text("Device Info"),
        subtitle: Text(_deviceInfo),
      ),
    );
  }
}

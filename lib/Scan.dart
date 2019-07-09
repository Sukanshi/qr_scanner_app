import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {

  String result = 'Hey There!';

  Future qr_scan() async{
    try{
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    }on PlatformException catch(e){
      setState(() {
        if (e.code == BarcodeScanner.CameraAccessDenied) {
          setState(() {
            result = 'Camera Access Denied';
          });
        } else {
          setState(() {
            result = 'Unknown Error $e';
          });
        }
      });
    } on FormatException {
      setState(() {
        result = 'You\'ve pressed back button without scanning';
      });
    }catch (e){
      setState(() {
        result = 'Unknown Error $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

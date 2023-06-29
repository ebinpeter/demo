import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'djs.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: login());
      }));
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 840,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/jpjsd.jpg"), fit: BoxFit.fill)),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text("Enter your details",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextField(
                  decoration: InputDecoration(  hintStyle: TextStyle(color: Colors.white),
                      hintText: "name", prefixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextField(
                  decoration: InputDecoration(  hintStyle: TextStyle(color: Colors.white),
                      hintText: "email", prefixIcon: Icon(Icons.email)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextField(
                  decoration: InputDecoration(  hintStyle: TextStyle(color: Colors.white),
                      hintText: "phone", prefixIcon: Icon(Icons.phone)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextField(cursorColor: Colors.white,
                  decoration: InputDecoration(

                      hintStyle: TextStyle(color: Colors.white),


                      hintText: "address",
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 10, ),
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => mucgh()));
                      },
                      child: Text("Enter")),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

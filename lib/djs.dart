import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mucgh extends StatefulWidget {
  const mucgh({Key? key}) : super(key: key);

  @override
  State<mucgh> createState() => _mucghState();
}

class _mucghState extends State<mucgh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Scaffold(
          body: Column(
            children: [
              Container(
                height: 841,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/jpjsd.jpg"), fit: BoxFit.fill)),
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: TextField(
                        decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
                            hintText: "name", prefixIcon: Icon(Icons.person)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: TextField(
                        decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
                            hintText: "email", prefixIcon: Icon(Icons.email)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: TextField(
                        decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
                            hintText: "phone", prefixIcon: Icon(Icons.phone)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: TextField(cursorColor: Colors.white,
                        decoration: InputDecoration(hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white,

                            hintText: "address",
                            prefixIcon: Icon(Icons.person)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, ),
                      child: SizedBox(
                        width: 200,
                        child: ElevatedButton(
                            style:ElevatedButton.styleFrom(backgroundColor: Colors.red),
                            onPressed: () {
                            },
                            child: Text("Conform")),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))
    );
  }
}

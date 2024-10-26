import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 88, 131, 18),
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/ll.png"))),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Social Media Experiment",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 35.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                elevation: 7.0,
                child: Container(
                  //padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Username",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          width: double.infinity,
                          height: 52.0,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Gmail",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 227, 66, 100),
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment
                              .topLeft, //renk geçişinin nasıl olacağının başlangıcı ve bitişi belirlenir
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.green.shade300, //renk geçişi yapar
                            Colors.purple.shade100,
                          ]),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          20.0)), //border 'ın kenarlarını yuvarlaştırır

                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 70,
                  height: 180.0,
                ),
              )
            ],
          ),
        ));
  }
}

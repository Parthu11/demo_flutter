import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {

      '/Third': (context) => const Scroll(),
    },
  )); //MaterialApp
}


class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(bottom:11),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.purple,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),
            ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.purple,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
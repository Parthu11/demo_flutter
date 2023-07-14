import 'package:flutter/material.dart';


class Decorat extends StatelessWidget {
  const Decorat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decoration'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(21))
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),topRight: Radius.elliptical(50, 40))
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(150)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.zero)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
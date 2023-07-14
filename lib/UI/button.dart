import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {

      '/button': (context) => const Button(),
    },
  )); //MaterialApp
}


class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/second');
            print('on tap');
          },
          child: Container(
            width: 200, height: 200, color: Colors.yellow,
            child: Center(
                child: InkWell(
                    onLongPress: (){
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Text('Long press button'))),
          ),
        ),
      ),
    );
  }
}

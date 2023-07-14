
import 'package:flutter/material.dart';
import 'decoration.dart';
import 'button.dart';
import 'scrollview.dart';

// function to trigger build when the app is run
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Homepage(),
      '/image': (context) => const SecondRoute(),
      '/button': (context) => const Button(),
      '/scroll': (context) => const Scroll(),
      '/decoration' : (context) => const Decorat(),
    },
  )); //MaterialApp
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.blueGrey,
      ), // AppBar
      body: Container(padding: EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Image'),
              onPressed: () {
                Navigator.pushNamed(context, '/image');
              },
            ), // ElevatedButton
            ElevatedButton(
              child: const Text('Button'),
              onPressed: () {
                Navigator.pushNamed(context, '/button');
              },
            ), // ElevatedButton
            ElevatedButton(
              child: const Text('Scroll View'),
              onPressed:(){
                Navigator.pushNamed((context), '/scroll');
              },
            ),
            ElevatedButton(
              child: const Text('Decoration'),
              onPressed:(){
                Navigator.pushNamed((context), '/decoration');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Center(
        child: Container(height: 400, width: 800, color: Colors.grey,
            child:Image.asset('assets/images/icons8-amazon-alexa-logo-128.png')),
      ),
    );
  }
}


// class ThirdRoute extends StatelessWidget {
//   const ThirdRoute({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Button"),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: InkWell(
//           onTap: (){
//             Navigator.pushNamed(context, '/second');
//             print('on tap');
//           },
//           child: Container(
//             width: 200, height: 200, color: Colors.yellow,
//             child: Center(
//                 child: InkWell(
//                     onLongPress: (){
//                       Navigator.pushNamed(context, '/second');
//                     },
//                     child: Text('Long press button'))),
//           ),
//         ),
//       ),
//     );
//   }
// }


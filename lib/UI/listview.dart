import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,));

}

class listview extends StatelessWidget{
  const listview({super.key});

  @override
  Widget build(BuildContext context) {

    var names = ['parth','jay','abhi','jatin','harsh','jayu','gaurav','rakesh','kevin','madhav','pinkal','gautam','kishan','jaimin','jigar','hayaan','darshan','dev','dipak'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(itemBuilder: (context, index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(names[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(names[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(names[index],style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
          )
        ],
      ),
    );
    },
      itemCount: names.length,
        separatorBuilder: (context,index){
        return Divider(height: 80,thickness: 2,);
        },
      ),
    );
  }
}



// body: ListView.builder(itemBuilder: (context, index){
//     return Text(names[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),);
//     },
//       itemCount: names.length,
//         itemExtent: 50,
//       ),
//     );
//   }
// }
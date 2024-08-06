import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'; //as json

import 'api.dart';

class MyChats extends StatefulWidget {
  const MyChats({super.key});

  @override
  State<MyChats> createState() => _MyChatsState();
}

class _MyChatsState extends State<MyChats> {

  List<Dash> ggg = []; //Dash is return type... return Dash();   string,dynamic

  //List<dash>....is a return type of future function,,,, return List<dash>;
  Future<List<Dash>> great() async {
    final Response = await get(Uri.parse('https://fakestoreapi.com/products'));

    // uri.parse()... is used for string to uri..,,,,, uri identifies what type resource is.. 

    var kite = jsonDecode(Response.body.toString());
    // Converts json string to object.,,,,,,jsondecode()

    if (Response.statusCode==200){
      // print(Response);
      for (Map <String,dynamic>k in kite){
       try{
        ggg.add(Dash.fromJson(k));
       }catch(e){}
        // print(ggg);
      }
      return ggg;
    }
    else {
      // print('data');
      return ggg;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: const Color(0xFF00A884),
        child: const Icon(
        Icons.message,
        color: Colors.white,
        ),),

        body: FutureBuilder(future: great(), builder: (context, AsyncSnapshot<List<Dash>>snap){
          print(snap);
          if (!snap.hasData){
            return const Text("Loading, response is left yet..");
          }
          else {
            // print("object"+ggg.length.toString());
            return ListView.builder(
              itemCount: ggg.length,
              itemBuilder: (context, index){
              return ListTile(
                leading: Image.asset('images/drona.jpeg', height: 50,),
                title: Text(snap.data![index].price.toString()),
                subtitle: Text(snap.data![index].title.toString()),
                // trailing: Text(snap.data![index].id.toString()),
              );


              // Container(
              //   color: const Color.fromARGB(255, 127, 150, 189),
              //   child: Column(
              //     children: [
              //       // ReusableRow(name: "uname", title: snap.data![index].rating.toString()),
              //       // ReusableRow(name: "id", title: snap.data![index].id.toString()),
              //       // ReusableRow(name: "title", title: snap.data![index].title.toString()),
              //     ],
              //   ),
              // );
            });
          }
        },),
    );
  }
}


// class ReusableRow extends StatelessWidget {
//   final name;
//   final title;
//   ReusableRow({super.key, required this.name, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(name),
//       subtitle: Text(title),
//     );
//   }
// }
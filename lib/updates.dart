import 'package:flutter/material.dart';

class MyUpdates extends StatelessWidget {
  const MyUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        ListTile(
          title: const Text('Status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          trailing: IconButton(onPressed: (){},
          icon: const Icon(Icons.more_vert)),
        ),
        const ListTile(
          leading: Stack(
            alignment: Alignment.bottomRight,
            children:[ 
            CircleAvatar(
            backgroundColor: Color.fromARGB(255, 194, 183, 173),
            radius: 24,
            child: Icon(Icons.person,
            color: Colors.white,
            size: 34,),
            ),
            
            CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF00A884),
            child: Icon(Icons.add,
            size: 20,
            color: Colors.white,),),
            ],
          ),
          title: Text('My status', style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          subtitle: Text('Tap to add status update', style: TextStyle(
            fontWeight: FontWeight.w600,
          ),),
        ),
        const SizedBox(height: 6,),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Recent updates',
              textAlign: TextAlign.justify,
             style: TextStyle(
              fontWeight: FontWeight.w700,
              
              color: Color.fromRGBO(106, 106, 106, 1),
            ),),
          ),
        ),
        const SizedBox(height: 6,),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index){
              return const ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundColor: Color.fromARGB(255, 21, 159, 228),
                child: Icon(Icons.gamepad,
                size: 36,),
              ),
              title: Text('B.Voc Placement',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),),
              subtitle: Text('12:00 pm',style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            );
            },
          ),
        ),
        ]
      ),
      
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 45,
            width: 45,
            child: FloatingActionButton(onPressed: (){},
            backgroundColor: const Color.fromARGB(255, 169, 251, 198),
            
            child: const Icon(Icons.edit,
            color: Color(0xFF00A884),
            size: 23,
            )),
          ),
          const SizedBox(height: 20,),
          FloatingActionButton(onPressed: (){},
          backgroundColor: const Color(0xFF00A884),
          child: const Icon(Icons.camera_alt_rounded,
          color: Colors.white,
          size: 23,
          )),
        ],
      ),
    );
  }
}
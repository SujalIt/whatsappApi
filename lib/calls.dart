import 'package:flutter/material.dart';

class MyCalls extends StatefulWidget {
  const MyCalls({super.key});

  @override
  State<MyCalls> createState() => _MyCallsState();
}

class _MyCallsState extends State<MyCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFF00A884),
              child: Icon(Icons.link,
              size: 31,
              color: Colors.white,),
              ),
              title: Text('Create call link',
              style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              ),),
              subtitle: Text('Share a link for you WhatsApp call',
              style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              ),),
            ),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text('Recent', style: TextStyle(fontWeight: FontWeight.w700,
              fontSize: 18),),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index){
                return ListTile(
                leading: Image.asset('images/drona.jpeg', height: 50,),
                title: const Text('B.Voc Placement', style: TextStyle(
                  fontWeight: FontWeight.w600
                ),),
                subtitle: const Row(
                  children: [
                    Icon(Icons.call_received,
                    size: 17,
                    color: Color(0xFF00A884),),
                    SizedBox(width: 4,),
                    Text('31/12/2023, 10:48 am')
                  ],
                ),
                trailing: const Icon(Icons.call,
                color: Color(0xFF00A884),),
              );
              }
            ),
          )
        ],
      ),
    );
  }
}
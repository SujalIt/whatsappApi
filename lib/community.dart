import 'package:flutter/material.dart';

class MyCommunity extends StatelessWidget {
  const MyCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('images/community.jpg',
          height: 230,
          width: 800,),
          const Text('   Stay connected with a\n            community',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          const Text("             Communities bring members together in \n          topic-based groups, and make it easy to get \n       admin announcements. Any community you're \n                        added to will appear here."),
          const SizedBox(
            height: 8,
          ),
          const Text('         See example communities>',
          style: TextStyle(
            color:  const Color(0xFF00A884),
            fontWeight: FontWeight.w600
          ),),
          const SizedBox(height: 30,),
          SizedBox(
            width: 297,
            height: 36,
            child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF00A884)),
            child:const Text("Start your community",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
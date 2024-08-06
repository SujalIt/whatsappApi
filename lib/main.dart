
import 'package:flutter/material.dart';
import 'package:whatsapp_layout/calls.dart';
import 'package:whatsapp_layout/chats.dart';
import 'package:whatsapp_layout/community.dart';
import 'package:whatsapp_layout/updates.dart';
// import 'package:http/http.dart' as json;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>with TickerProviderStateMixin {

  late TabController _control;
  @override
  void initState() { 
    // TODO: implement initState
    super.initState();
    _control = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text('WhatsApp',
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 25,
        ),),
        backgroundColor: const Color(0xFF00A884),
        actions: <Widget>[
          IconButton(onPressed: (){},
          icon: const Icon(Icons.camera_alt_outlined,
          color: Colors.white,
          size: 27,)),
          IconButton(
          onPressed: (){},
          icon: const Icon(Icons.search,
          color: Colors.white,
          size: 27,)),
          IconButton(
          onPressed: (){},
          icon: const Icon(Icons.more_vert,
          size: 27,
          color: Colors.white,))
        ],
        bottom:  TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          labelStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 15,
          ),
          controller: _control,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.group,
              size: 23,
              )
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Updates",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _control,
        children:  const [
        MyCommunity(),
        MyChats(),
        MyUpdates(),
        MyCalls(),
      ]
      ),
    );
  }
}

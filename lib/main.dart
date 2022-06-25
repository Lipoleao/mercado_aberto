import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Mercado livre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Livre tutu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    

    return Scaffold(
      
      
      appBar: AppBar(
        
        
        leading:Icon(Icons.menu),
    
        title: Text(widget.title),
        backgroundColor: Color(0xfff5d415),
        bottom:  const TabBar(
          tabs: <Widget>[
            
          ],
        ),

         actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            tooltip: 'Seu carrinho',
             onPressed: () {},
          )
        ]
        
       
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
        ),
      ),
      
    );
  }
}

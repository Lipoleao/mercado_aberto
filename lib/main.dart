import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:paodoce_01/components/butao_roxo.dart';
import 'package:paodoce_01/components/card_frete.dart';
import 'package:paodoce_01/components/carousel.dart';

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

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black),
        title: Container(
          child: TextField(
            controller: null,
            autofocus: false,
             style:
                  new TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 164, 170, 177)),
                  decoration: new InputDecoration(
                    filled: true,

                    fillColor: Colors.white,
                    hintText: 'Busque no Mercado Aberto',
                    contentPadding: const EdgeInsets.fromLTRB(40.0, 10.0, 20.0, 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),

                    prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                  ),
        ),
        
        backgroundColor: Color(0xfff5d415),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined,color: Colors.black),
            tooltip: 'Seu carrinho',
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.location_pin ),
                Text('Enviar para Marcello Queiroz - Rua Jardim Paulista, 56')
              ],
            ),
             
            ),
      ),
      body: Container(
         decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 0),
            colors: <Color>[
              Color(0xfff5d415),
              Color(0xfff5f5f5)
            ],
            tileMode: TileMode.clamp,
          ),
         ),
         child:SingleChildScrollView(
         child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
              Carrosel(),
            
            //Botao Roxo
            const Padding(padding: EdgeInsets.all(5)),
            ButaoRoxo(),

            //Card frete gratís

            const Padding(padding: EdgeInsets.all(5)),
            CardVerde(),
            
          ]
        ),
        
         ) 
      ),
      );
      
  }
}

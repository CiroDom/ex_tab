import 'package:flutter/material.dart';

void main() => runApp(const QueViagem());

class QueViagem extends StatefulWidget {
  const QueViagem({super.key});

  @override
  State<QueViagem> createState() => _QueViagemState();
}

class _QueViagemState extends State<QueViagem> {
  final corBase = Colors.blue.shade800;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Que viagem! Turismo',
              style: TextStyle(
                  color: corBase, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber.shade600,
            bottom: TabBar(
              indicatorColor: corBase,
              tabs: [
                setTab('VOOS', Icons.flight_rounded),
                setTab('PASSEIOS', Icons.shopping_bag),
                setTab('MAPA', Icons.explore_rounded),
              ],
            ),
          ),
          body: TabBarView(),
        ),
      ),
    );
  }

  Tab setTab(String titulo, IconData icone) {
    return Tab(
      icon: Icon(
        icone,
        size: 36,
        color: corBase,
      ),
      child: Text(
        titulo,
        style: TextStyle(
            color: corBase, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container setVoo() {
    return Container(
      padding: const EdgeInsets.all(45),
      child: Column(
        children: [
          const Text(
          'PARTIDA',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 15,),
        const Text('Abril 26, 2022'),
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
        )
        ],
      ),
    );
  }
}

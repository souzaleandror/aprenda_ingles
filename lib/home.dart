import 'package:aprenda_ingles/telas/bichos.dart';
import 'package:aprenda_ingles/telas/numeros.dart';
import 'package:aprenda_ingles/telas/vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apenda Ingles'),
        bottom: TabBar(
          controller: tabController,
          indicatorWeight: 4,
          //indicatorColor: Colors.orange,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          //labelColor: Colors.green,
          //unselectedLabelColor: Colors.purple,

          tabs: [
            Tab(
              text: 'Bichos',
            ),
            Tab(
              text: 'Numeros',
            ),
            Tab(
              text: 'Vogais',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}

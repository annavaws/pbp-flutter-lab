import 'package:counter_7/watchlist_page.dart';

import '/form.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'data.dart' as data;

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataDataState();
}

class _MyDataDataState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Budget'),
        ),
        drawer: Drawer(
            child: Column(children: [
          ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
              }),
          ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyFormPage()));
              }),
          ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyDataPage()));
              }),
              ListTile(
            title: const Text('WatchList'),
            onTap: () {
                // Route menu ke halaman to do
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchlistPage()),
                );
            },
            ),
        ])),
        
        body: ListView(children: <Widget>[
          for (var item in data.listData)
            Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 144, 144, 144)),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              item.judul,
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            )),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${item.nominal}',
                                style: TextStyle(fontSize:15,),),
                                Text(item.tipeBudget,
                                style: TextStyle(fontSize:15,),),
                              ]))
                    ])))
        ])
        );
  }
}

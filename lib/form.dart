import 'package:counter_7/watchlist_page.dart';

import '/main.dart';
import '/budget.dart';
import 'package:flutter/material.dart';

import 'data.dart' as data;

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int nominal = 0;

  String tipeBudget = 'Pilih Jenis';
  List<String> listTipeBudget = ['Pilih Jenis', 'Pengeluaran', 'Pemasukan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
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
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Sate Pacil",
                      labelText: "Judul",

                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Contoh: 10000",
                          labelText: 'Nominal',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onChanged: (String? value) {
                        setState(() {
                          nominal = int.parse(value!);
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          nominal = int.parse(value!);
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Nominal tidak boleh kosong!';
                        }
                        return null;
                      }),
                ),
                SizedBox(
                  width: 150,
                  child:  DropdownButtonFormField(
                    value: tipeBudget,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: listTipeBudget.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        tipeBudget = newValue!;
                      });
                    },
                    validator: (newValue) {
                    if (newValue == 'Pilih Jenis') {
                      return 'Jenis Budget tidak boleh kosong!';
                    }
                    return null;

                    }
                  ),
                
                ),
               
                Container(
                  margin:  const EdgeInsets.only(
                    bottom: 0,
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 0, 85, 146)),
                    overlayColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 1, 227, 58)),
                    minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                    
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          data.listData
                              .add(data.Data(_judul, nominal, tipeBudget));
                          
                        
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 15,
                            child: ListView(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              shrinkWrap: true,
                              children: <Widget>[
                                const Center(child: Text('Data telah disimpan')),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Kembali'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                ),],
                ), 
                ),
                // TextButton(
                  
                //   child: const Text(
                //     "Simpan",
                //     style: TextStyle(color: Colors.white),
                //   ),
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(
                //         const Color.fromARGB(255, 0, 85, 146)),
                //     overlayColor: MaterialStateProperty.all(
                //         const Color.fromARGB(255, 1, 227, 58)),
                //     minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                    
                //   ),
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       showDialog(
                //         context: context,
                //         builder: (context) {
                //           data.listData
                //               .add(data.Data(_judul, nominal, tipeBudget));

                //           return Dialog(
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //             elevation: 15,
                //             child: ListView(
                //               padding:
                //                   const EdgeInsets.only(top: 20, bottom: 20),
                //               shrinkWrap: true,
                //               children: <Widget>[
                //                 const Center(child: Text('Data telah disimpan')),
                //                 const SizedBox(height: 20),
                //                 TextButton(
                //                   onPressed: () {
                //                     Navigator.pop(context);
                //                   },
                //                   child: const Text('Kembali'),
                //                 ),
                //               ],
                //             ),
                //           );
                //         },
                //       );
                //     }
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

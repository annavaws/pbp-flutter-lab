import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/watchlist_page.dart';
import 'package:flutter/material.dart';

import 'budget.dart';
import 'form.dart';
import 'main.dart';

class DetailPage extends StatelessWidget {
  final Watchlist mywatchlist;
  const DetailPage(this.mywatchlist, {super.key});
  watchedField() {
    if (mywatchlist.fields.watched.toString() == "Watched.NOT_YET") {
      return Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 15,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Status: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: "waiting" "\n"),
            ],
          ),
        ),
      );
    } else {
      return Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 15,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Status: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: "watched" "\n"),
            ],
          ),
        ),
      );
    }
  }

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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
            }),
        ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()));
            }),
        ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()));
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
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "\n${mywatchlist.fields.title}\n",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Release Date: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "${mywatchlist.fields.releaseDate}\n"),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Rating: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "${mywatchlist.fields.rating}\n"),
                  ],
                ),
              ),
            ),
            watchedField(),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Review: \n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "${mywatchlist.fields.review}\n"),
                  ],
                ),
              ),
            ),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WatchlistPage()),
                  );
                },
                child: const SizedBox(
                    height: 40,
                    width: 200,
                    child: Center(
                      child: Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}

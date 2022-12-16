import 'package:flutter/material.dart';
import 'package:proje2/secondscreen.dart';

String city = "Ankara";
String button = "BUTON";
Color ankaraColor = Colors.red;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    /*print(arabasayisidondur().toString);
    print(stringdondur().toString);
    print(geriyeDondurmeyenFonk(6,100).toString);*/

    return Scaffold(
        body: Container(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Edanur",
            style:
                TextStyle(color: Colors.teal, fontSize: 30, letterSpacing: 25),
          ),
          SizedBox(
            width: 50,
          ),
          Text(city),
          SizedBox(
            width: 50,
          ),
          Text("2.3.text"),
          SizedBox(
            width: 50,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => secondscreen()));
                      },
                      child: Text(
                        "Listview Texti",
                        style: TextStyle(fontSize: 30),
                      ))),
              Center(
                child: Text(
                  "Listview Texti",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(child: Text("Listview Texti")),
              Center(child: Text("Listview Texti")),
              Center(child: Text("Listview Texti")),
              Center(child: Text("Listview Texti")),
              Center(child: Text("Listview Texti")),
              Center(child: Text("Listview Texti")),
              Center(child: Text("Listview Texti")),
            ],
          ),
          ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                if (city == "İstanbul") {
                  setState(() {
                    city = "Ankara";
                    button = "BUTON";
                    ankaraColor = Colors.red;
                  });
                } else {
                  setState(() {
                    city = "İstanbul";
                    button = "Edanur AKTAN";
                  });
                }
              },
              child: Text(
                button,
                style: TextStyle(fontSize: 30.0, color: Colors.blue),
              ))
        ]),
      ),
    ));
  }
}

int arabasayisidondur() {
  return 5;
}

String stringdondur() {
  return "string döndü";
}

int geriyeDondurmeyenFonk(int x, int y) {
  return x + y;
}

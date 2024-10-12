import 'package:flutter/material.dart';
import 'package:kendibasimadenemem/meyvesayfasi.dart';
import 'package:kendibasimadenemem/sebzesayfasi.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // Ana ekranı burada çağırıyoruz
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MEYVE VE SEBZE HAKKINDA'),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 60),
          child: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Seçmek istediğiniz kategoriyi giriniz",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MeyveSayfasi()),
                      );
                      print("meyve kategorisi seçildi");
                    },
                  child: const Text("Meyve"),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SebzeSayfasi()),
                    );
                    print("sebze kategorisi seçildi");
                  },
                  child: const Text("Sebze"),
                ),
              ],
          ),

        ),
      );
  }
}

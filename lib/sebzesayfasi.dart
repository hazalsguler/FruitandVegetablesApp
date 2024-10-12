import 'package:flutter/material.dart';

class SebzeSayfasi extends StatelessWidget {
  const SebzeSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sebze Kategorisi"),
        backgroundColor: Colors.pink,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildVegCard(context, "assets/brokoli.jpg", "Brokoli", "Sebze 1"),
          _buildVegCard(context, "assets/karnabahar.jpg", "Karnabahar", "Sebze 2"),
          _buildVegCard(context, "assets/maydonoz.jpg", "Maydonoz", "Sebze 3"),
          _buildVegCard(context, "assets/maydonoz.jpg", "Roka", "Sebze 4"),

        ],
      ),
    );
  }
  Widget _buildVegCard(BuildContext context, String imagePath, String title, String description) {
    return GestureDetector(
      onTap: (){
        showDialog(
            context: context,
            builder: (context)=>AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(imagePath, fit: BoxFit.cover, height: 150),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(description),
                ],
              ),
            ),
        );
      },
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(imagePath, fit: BoxFit.cover, height: 100, width: double.infinity,),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )

          ],
        ),
      ),
    );
  }
}

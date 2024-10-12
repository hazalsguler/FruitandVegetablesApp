import 'package:flutter/material.dart';

class MeyveSayfasi extends StatelessWidget {
  const MeyveSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meyve Kategorisi"),
        backgroundColor: Colors.pink,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildFruitCard(context, "assets/cilek.jpeg", "Çilek", "Meyve 1 hakkında bilgiler."),
          _buildFruitCard(context, "assets/kiraz.jpg", "Kiraz", "Meyve 2 hakkında bilgiler."),
          _buildFruitCard(context, "assets/kivi.jpeg", "Kivi", "Meyve 3 hakkında bilgiler."),
          _buildFruitCard(context, "assets/muz.jpg", "Muz", "Meyve 4 hakkında bilgiler."),
          // Daha fazla meyve kartı ekleyebilirsiniz
        ],
      ),
    );
  }

  Widget _buildFruitCard(BuildContext context, String imagePath, String title, String description) {
    return GestureDetector(
      onTap: () {
        // Tıklama sırasında büyüyen kart ve bilgi gösterimi
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(imagePath, fit: BoxFit.cover, height: 150),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(imagePath, fit: BoxFit.cover, height: 100, width: double.infinity),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

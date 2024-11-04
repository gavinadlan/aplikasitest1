import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Sesi7(),
  ));
}

class Sesi7 extends StatefulWidget {
  const Sesi7({super.key});

  @override
  State<Sesi7> createState() => _Sesi7State();
}

class _Sesi7State extends State<Sesi7> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Destinasi Wisata"),
        backgroundColor: Colors.teal, // Warna header AppBar
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  destinationCard(
                    context,
                    'Annapurna',
                    'north-central Nepal',
                    5.0,
                    'img/annapurna.jpg',
                    const DetailPage(
                      title: 'Annapurna',
                      country: 'north-central Nepal',
                      rating: 5.0,
                      imagePath: 'img/annapurna.jpg',
                      description: 'Gunung Annapurna adalah bagian dari Pegunungan Himalaya dan terkenal dengan pemandangan spektakuler.',
                    ),
                  ),
                  destinationCard(
                    context,
                    'Everest',
                    'Nepal',
                    5.0,
                    'img/Everest.jpg',
                    const DetailPage(
                      title: 'Everest',
                      country: 'Nepal',
                      rating: 5.0,
                      imagePath: 'img/Everest.jpg',
                      description: 'Gunung Everest adalah gunung tertinggi di dunia dan menjadi tujuan utama para pendaki.',
                    ),
                  ),
                  destinationCard(
                    context,
                    'Kilimanjaro',
                    'Afrika',
                    4.5,
                    'img/Kilimanjaro.jpg',
                    const DetailPage(
                      title: 'Kilimanjaro',
                      country: 'Afrika',
                      rating: 4.5,
                      imagePath: 'img/Kilimanjaro.jpg',
                      description: 'Kilimanjaro adalah gunung tertinggi di Afrika yang terletak di Tanzania.',
                    ),
                  ),
                  destinationCard(
                    context,
                    'Rinjani',
                    'Nusa Tenggara Barat',
                    4.8,
                    'img/Rinjani.jpg',
                    const DetailPage(
                      title: 'Rinjani',
                      country: 'Nusa Tenggara Barat',
                      rating: 4.8,
                      imagePath: 'img/Rinjani.jpg',
                      description: 'Gunung Rinjani adalah gunung berapi aktif di Pulau Lombok, terkenal dengan danau kalderanya.',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget destinationCard(BuildContext context, String title, String country, double rating, String imagePath, Widget detailPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detailPage),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(imagePath, height: 180, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 18),
                      Text(rating.toString(), style: const TextStyle(color: Colors.teal)),
                      const SizedBox(width: 10),
                      const Icon(Icons.location_on, color: Colors.teal, size: 18),
                      Text(country, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String country;
  final double rating;
  final String imagePath;
  final String description;

  const DetailPage({
    super.key,
    required this.title,
    required this.country,
    required this.rating,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal, // Warna header AppBar di Detail Page
      ),
      body: Container(
        color: Colors.white, // Latar belakang yang cerah
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imagePath, width: double.infinity, height: 200, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
                const Spacer(),
                const Icon(Icons.star, color: Colors.amber),
                Text(rating.toString(), style: const TextStyle(color: Colors.teal)),
                const SizedBox(width: 5),
                const Icon(Icons.location_on, color: Colors.teal),
                Text(country, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

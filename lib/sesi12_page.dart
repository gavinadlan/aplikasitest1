import 'package:flutter/material.dart';

class Sesi12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TokoBabaLiong',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal, // Warna utama AppBar
        elevation: 4,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            SizedBox(height: 16),
            Text(
              'Terlaris',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal[800], // Warna judul bagian
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildProductCard(
                    'img/vespa.png',
                    'Vespa Sprint 150 ABS',
                    'Rp50.000.000',
                    'Jakarta Utara',
                    '5.0 | 2rb+ terjual',
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: _buildProductCard(
                    'img/nmax.png',
                    'Yamaha Nmax Neo s',
                    'Rp34.350.000',
                    'Jakarta Barat',
                    '4.8 | 1rb+ terjual',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Mungkin kamu suka',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal[800],
              ),
            ),
            SizedBox(height: 16),
            _buildSuggestionGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.teal[50], // Warna lembut untuk search bar
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.teal),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari produk...',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(
      String imagePath, String productName, String price, String location, String rating) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 120,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 16,
                color: Colors.redAccent, // Warna harga lebih hidup
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.location_on, size: 14, color: Colors.blueGrey),
                SizedBox(width: 4),
                Text(
                  location,
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.star, size: 14, color: Colors.orangeAccent),
                SizedBox(width: 4),
                Text(
                  rating,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        String imagePath = index == 0 ? 'img/vario.png' : 'img/aerox.png';
        String productName =
            index == 0 ? 'Honda Vario 125 CBS ISS' : 'Yamaha Aerox 155 ABS';
        String price = index == 0 ? 'Rp24.000.000' : 'Rp32.000.000';
        String location = index == 0 ? 'Jakarta Selatan' : 'Bandung';
        String rating =
            index == 0 ? '4.7 | 1rb+ terjual' : '4.9 | 1.5rb+ terjual';

        return _buildProductCard(imagePath, productName, price, location, rating);
      },
    );
  }
}

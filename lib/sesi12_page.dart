import 'package:flutter/material.dart';

class Sesi12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TokoBabaLiong'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView( // Menambahkan SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            SizedBox(height: 16),
            Text(
              'Terlaris',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildProductCard('img/vespa.jpg', 'Vespa Sprint 150 ABS', 'Rp50.000.000', 'Jakarta Utara', '5.0 | 2rb+ terjual'),
            SizedBox(height: 16),
            _buildProductCard('img/nmax.jpg', 'Yamaha Nmax Neo s', 'Rp34.350.000', 'Jakarta Barat', '4.8 | 1rb+ terjual'),
            SizedBox(height: 16),
            Text(
              'Mungkin kamu suka',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Menggunakan Expanded untuk GridView agar bisa menyesuaikan ruang
            Expanded(
              child: _buildSuggestionGrid(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
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

  // Card untuk produk terlaris
  Widget _buildProductCard(String imagePath, String productName, String price, String location, String rating) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath, // Ganti dengan path gambar sesuai parameter
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName, // Nama produk
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(
                    price, // Harga produk
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        location, // Lokasi
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, size: 14, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(
                        rating, // Rating produk
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Grid untuk produk "Mungkin Kamu Suka"
  Widget _buildSuggestionGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 2, // Tampilkan hanya 2 produk
        itemBuilder: (context, index) {
          // Sesuaikan gambar dan produk berdasarkan index
          String imagePath = index == 0 ? 'img/vario.jpg' : 'img/aerox.jpeg'; // Ganti gambar sesuai index
          String productName = index == 0 ? 'Honda Vario 125 CBS ISS' : 'Yamaha Aerox 155 ABS';
          String price = index == 0 ? 'Rp24.000.000' : 'Rp32.000.000';
          String location = index == 0 ? 'Jakarta Selatan' : 'Bandung';
          String rating = index == 0 ? '4.7 | 1rb+ terjual' : '4.9 | 1.5rb+ terjual';

          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    productName, // Nama produk
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    price, // Harga produk
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        location, // Lokasi
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 14, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(
                        rating, // Rating produk
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

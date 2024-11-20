import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(211, 145, 66, 32),
        title: const Text(
          "Grid View",
          selectionColor: Colors.white,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount:
              screenWidth > 600 ? 3 : 2, // Adjust columns based on width
          crossAxisSpacing: 10, // Spacing between columns
          mainAxisSpacing: 10, // Spacing between rows
          padding: const EdgeInsets.all(10), // Outer padding for the GridView
          children: [
            _buildImageContainer(
              "https://th.bing.com/th/id/OIG2.Zo8RvuamoSbcWLkMm9vK?pid=ImgGn",
              screenWidth,
              screenHeight,
            ),
            _buildImageContainer(
              "https://th.bing.com/th/id/OIG2.RYi8zhLgR9TxwEtrjWOD?pid=ImgGn",
              screenWidth,
              screenHeight,
            ),
            _buildImageContainer(
              "https://th.bing.com/th/id/OIG2.2XL7ACef29iAnIp3vOyF?pid=ImgGn",
              screenWidth,
              screenHeight,
            ),
            _buildImageContainer(
              "https://th.bing.com/th/id/OIG4.bTlF96LHETrZLbEm1K05?pid=ImgGn",
              screenWidth,
              screenHeight,
            ),
            _buildImageContainer(
              "https://th.bing.com/th/id/OIG2.IdSvu.HQLQ3cPKumnNfw?pid=ImgGn",
              screenWidth,
              screenHeight,
            ),
            _buildImageContainer(
              "https://th.bing.com/th/id/OIG4.W_prS4dYt3jRdtdeQQxk?pid=ImgGn",
              screenWidth,
              screenHeight,
            ),
          ],
        ),
      ),
    );
  }

  // Widget to create a styled container with rounded corners, padding, and margin
  Widget _buildImageContainer(
      String imageUrl, double screenWidth, double screenHeight) {
    return Container(
      margin: const EdgeInsets.all(8), // Margin around the container
      decoration: BoxDecoration(
        color: Colors.white, // Background color for clarity
        borderRadius: BorderRadius.circular(15), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(2, 4), // Shadow direction
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            15), // Ensure image respects container's corners
        child: Image.network(
          imageUrl,
          width: screenWidth * 0.4, // Responsive width
          height: screenHeight * 0.2, // Responsive height
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

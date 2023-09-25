import 'package:flutter/material.dart';
class ChoiceButton extends StatelessWidget {
  final String imagePath;
  final String caption;
  final double imageWidth; // New property for image width
  final double imageHeight; // New property for image height
  final VoidCallback onPressed;

  const ChoiceButton({
    required this.imagePath,
    required this.caption,
    this.imageWidth = 100.0, // Default image width
    this.imageHeight = 100.0, // Default image height
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: imageWidth, // Adjust the image width as needed
            height: imageHeight, // Adjust the image height as needed
          ),
          SizedBox(height: 10),
          Text(
            caption,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,

            ),
          ),
        ],
      ),
    );
  }
}

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose an Option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChoiceButton(
              imagePath: 'assets/health.png',
              imageWidth: 240,
              imageHeight: 120,
              // Replace with your image path
              caption: 'Health',
              onPressed: () {
                // Navigate to Page 1
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ChoiceButton(
              imagePath: 'assets/nutrition.png', // Replace with your image path
              imageWidth: 245,
              imageHeight: 120,
              caption: 'Nutrition',
              onPressed: () {
                // Navigate to Page 2
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ChoiceButton(
              imagePath: 'assets/history.png', // Replace with your image path
              caption: 'History',
              onPressed: () {
                // Navigate to Page 3
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 1 Page'),
      ),
      body: const Center(
        child: Text('This is Option 1 Page'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 2 Page'),
      ),
      body: const Center(
        child: Text('This is Option 2 Page'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option 3 Page'),
      ),
      body: const Center(
        child: Text('This is Option 3 Page'),
      ),
    );
  }
}

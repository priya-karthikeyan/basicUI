
import 'package:flutter/material.dart';
import 'package:i_am_rich/choice.dart';
class FarmerSignInPage extends StatefulWidget {
  const FarmerSignInPage({super.key});

  @override
  _FarmerSignInPageState createState() => _FarmerSignInPageState();
}

class _FarmerSignInPageState extends State<FarmerSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In as Farmer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Photo or Logo
            Container(
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/farmer.png'), // Add your image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Email Field with Icon
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email), // Email Icon
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Phone Field with Icon
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Phone',
                prefixIcon: Icon(Icons.phone), // Phone Icon
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Sign In button press
                _signIn();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text('Sign In'),
                ],
              ),
            ),
            // Sign In with Google Button
            ElevatedButton(
              onPressed: () {
                // Handle Sign In with Google button press
                _signInWithGoogle();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(width: 10),
                  Text('Sign In with Google'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signIn() {
    // Handle Sign In button press here
    // You can use Navigator to navigate to another page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ChoicePage(), // Replace with your next page widget
      ),
    );
  }

  void _signInWithGoogle() {
    // Handle Sign In with Google button press here
    // You can use Navigator to navigate to another page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ChoicePage(), // Replace with your next page widget
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: const Center(
        child: Text('This is the next page.'),
      ),
    );
  }
}


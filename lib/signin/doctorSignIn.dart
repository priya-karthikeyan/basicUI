
import 'package:flutter/material.dart';
import 'package:i_am_rich/signin/proof.dart';

class DoctorSignInPage extends StatefulWidget {
  const DoctorSignInPage({super.key});

  @override
  _DoctorSignInPageState createState() => _DoctorSignInPageState();
}

class _DoctorSignInPageState extends State<DoctorSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In as Doctor'),
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
                  image: AssetImage('assets/doctor.png'), // Add your image asset
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
        builder: (context) => const ProofPage(), // Replace with your next page widget
      ),
    );
  }

  void _signInWithGoogle() {
    // Handle Sign In with Google button press here
    // You can use Navigator to navigate to another page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProofPage(), // Replace with your next page widget
      ),
    );
  }
}



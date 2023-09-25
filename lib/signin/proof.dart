import 'package:flutter/material.dart';

class ProofPage extends StatefulWidget {
  const ProofPage({super.key});

  @override
  _ProofPageState createState() => _ProofPageState();
}

class _ProofPageState extends State<ProofPage> {
  int experience = 0;
  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'ID Proof',

                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // You can add a button or file picker here for uploading ID proof.
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Sign In with Google button press

              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload),
                  SizedBox(width: 10),
                  Text('Add a file'),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: Container(
                height: 1.0,    // Height of the line (thickness)
                width: 200.0,  // Width of the line
                color: Colors.grey, // Color of the line
              ),
            )
,
            const SizedBox(height: 25),

            // Experience (with increment and decrement buttons)
            const Center(
              child: Text(
                'Experience(years)',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$experience',
                  style: const TextStyle(fontSize: 16),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      experience++; // Increment experience
                    });
                  },
                  icon: const Icon(Icons.add),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      if (experience > 0) {
                        experience--; // Decrement experience (minimum 0)
                      }
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),

            const SizedBox(height: 25),
            Center(
              child: Container(

                height: 1.0,    // Height of the line (thickness)
                width: 200.0,  // Width of the line
                color: Colors.grey, // Color of the line
              ),
            )

            ,const SizedBox(height: 25),

            // Location Text Field
            const Center(
              child: Text(
                'Location',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: locationController,
              decoration: const InputDecoration(
                hintText: 'Enter your location',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    locationController.dispose();
    super.dispose();
  }
}
